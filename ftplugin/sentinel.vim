setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

" System runs a shell command. If possible, it will temporary set
" the shell to /bin/sh for Unix-like systems providing a Bourne
" POSIX like environment.
function! sentinel#System(str) abort
  " Preserve original shell and shellredir values
  let l:shell = &shell
  let l:shellredir = &shellredir

  " Use a Bourne POSIX like shell. Some parts of vim-go expect
  " commands to be executed using bourne semantics #988 and #1276.
  " Alter shellredir to match bourne. Especially important if login shell
  " is set to any of the csh or zsh family #1276.
  if executable('/bin/sh')
      set shell=/bin/sh shellredir=>%s\ 2>&1
  endif

  try
    let l:output = call('system', [a:str])
    return l:output
  finally
    " Restore original values
    let &shell = l:shell
    let &shellredir = l:shellredir
  endtry
endfunction

function! sentinel#GetLines()
  let buf = getline(1, '$')
  if &encoding != 'utf-8'
    let buf = map(buf, 'iconv(v:val, &encoding, "utf-8")')
  endif
  return buf
endfunction

function! sentinel#Fmt()
  " Formatting on save
  " Write current unsaved buffer to a temp file
  let l:tmpname = tempname()
  call writefile(sentinel#GetLines(), l:tmpname)

  " Run sentinel format
  let command = "sentinel fmt " . l:tmpname
  call sentinel#System(command)

  " remove undo point caused via BufWritePre
  try | silent undojoin | catch | endtry

  " Get the permissions
  let old_fileformat = &fileformat
  if exists("*getfperm")
    " save file permissions
    let original_fperm = getfperm(expand('%'))
  endif

  call rename(l:tmpname,  expand('%'))

  " Restore file permissions
  if exists("*setfperm") && original_fperm != ''
    call setfperm(l:tmpname , original_fperm)
  endif

  " Reload buffer to reflect latest changes
  silent! edit!

  let &fileformat = old_fileformat
  let &syntax = &syntax

  " Cleanup
  call delete(l:tmpname)
endfunction

augroup sentinel
  autocmd!
  autocmd BufWritePre *.sentinel call sentinel#Fmt()
augroup END

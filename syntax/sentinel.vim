""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" standard keywords for literals, etc
syntax keyword sentinelkeywords
  \ as
  \ default
  \ func
  \ rule
  \ return
  \ break
  \ continue

" standard keywords as matches (have other forms)
syntax match sentinelKeywords 
  \ "when"

highlight default link sentinelKeywords Keyword


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" builtins
syntax keyword sentinelBuiltins
  \ append
  \ delete
  \ error
  \ keys
  \ length
  \ print
  \ range
  \ values
  \ int
  \ float
  \ string
  \ bool

highlight default link sentinelBuiltins Identifier


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" booleans and other pre-declared identifiers
syntax keyword sentinelBooleans true false
syntax keyword sentinelPreDecl  null undefined

highlight default link sentinelBooleans Boolean
highlight default link sentinelPreDecl  sentinelBooleans


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" conditional keywords
syntax keyword sentinelConditionals
  \ if
  \ case

" conditional pattern - else
syntax match sentinelConditionals "else\ze\s\+\(if\s+\)\?.*{"

highlight default link sentinelConditionals Conditional


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" loops (non-expression/quant)
syntax keyword sentinelLoop 
  \ for
  \ any
  \ all

highlight default link sentinelLoop Repeat


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" imports
syntax keyword sentinelImport import
highlight default link sentinelImport Include


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" parameters
syntax keyword sentinelParam param
highlight default link sentinelParam Define


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Labels
syntax match sentinelLabels "else\ze\s*:"
syntax match sentinelLabels "when\ze\s\+.*:"

highlight default link sentinelLabels Label


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
syntax match sentinelNumber "\v<\d+>"
syntax match sentinelNumber "\v<\d+\.\d+>"
syntax match sentinelNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match sentinelNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match sentinelNumber "\v<0b[01]+>"
syntax match sentinelNumber "\v<0o\o+>"

highlight default link sentinelNumber Number


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Strings
syntax region sentinelString start=/"/ skip=/\\"/ end=/"/ oneline contains=@Spell

highlight default link sentinelString String


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comments
syntax match sentinelComment "\v(#|//).*" contains=@Spell

highlight default link sentinelComment Comment

syntax keyword sentinelKeywords
  \ rule
  \ as
  \ if
  \ func
  \ return
  \ for
  \ keys
  \ values
  \ range
  \ delete
  \ append
  \ main

syntax keyword sentImport import

syntax match sentinelOperators "\v\="
syntax match sentinelOperators "\v\+"
syntax match sentinelOperators "\v-"
syntax match sentinelOperators "\v\*"
syntax match sentinelOperators "\v\/"
syntax match sentinelOperators "\v\%"
syntax match sentinelOperators "\v!"
syntax match sentinelOperators "\v<"
syntax match sentinelOperators "\v,"
syntax match sentinelOperators "\v\."
syntax match sentinelOperators "\v:"
syntax match sentinelOperators "\v;"
syntax match sentinelOperators "\v\=\="
syntax match sentinelOperators "\v\+\="
syntax match sentinelOperators "\v-\="
syntax match sentinelOperators "\v\*\="
syntax match sentinelOperators "\v/\="
syntax match sentinelOperators "\v\%\="
syntax match sentinelOperators "\v\\>"
syntax match sentinelOperators "\v!\="
syntax match sentinelOperators "\v<\="
syntax match sentinelOperators "\v>\="
syntax match sentinelOperators "\v\{"
syntax match sentinelOperators "\v\}"
syntax match sentinelOperators "\v\("
syntax match sentinelOperators "\v\)"
syntax match sentinelOperators "\v\["
syntax match sentinelOperators "\v\]"
syntax match sentinelOperators "\v\band\s"
syntax match sentinelOperators "\v\bor\s"
syntax match sentinelOperators "\vcontains\s"
syntax match sentinelOperators "\v\bin\s"
syntax match sentinelOperators "\v\bis\s"
syntax match sentinelOperators "\v\bmatches\s"
syntax match sentinelOperators "\v\bnot\s"
syntax match sentinelOperators "\v\bxor\s"
syntax match sentinelOperators "\v\belse\s"

syntax match sentinelNumber "\v<\d+>"
syntax match sentinelNumber "\v<\d+\.\d+>"
syntax match sentinelNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match sentinelNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match sentinelNumber "\v<0b[01]+>"
syntax match sentinelNumber "\v<0o\o+>"

syntax match sentinelComment "\v#.*$"

syntax region sentinelString start=/"/ skip=/\\"/ end=/"/ oneline

" Set highlights
highlight default link sentinelKeywords Keyword
highlight default link sentinelString String
highlight default link sentinelNumber Number
highlight default link sentinelOperators Operator
highlight default link sentinelComment Comment
highlight default link sentImport Include

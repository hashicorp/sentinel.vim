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
syntax match sentinelOperators "\vand\s"
syntax match sentinelOperators "\vor\s"
syntax match sentinelOperators "\vcontains\s"
syntax match sentinelOperators "\vin\s"
syntax match sentinelOperators "\vis\s"
syntax match sentinelOperators "\vmatches\s"
syntax match sentinelOperators "\vnot\s"
syntax match sentinelOperators "\vxor\s"
syntax match sentinelOperators "\velse\s"

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

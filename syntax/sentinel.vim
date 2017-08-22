syntax keyword sentinelKeywords
  \ rule
  \ or
  \ and

syntax keyword sentinelOperators
  \ "\v/="

syntax match sentinelNumber "\v<\d+>"

" Set highlights
highlight default link sentinelKeywords Keyword
highlight default link sentinelNumber Number
highlight default link sentinelOperators Operator

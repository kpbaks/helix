(comment) @comment.line
(number) @number
(string) @string
(bool_setting) @type
(ident)

[
  "-"
  "+"
  "?"
  "*"
  "<<"
  ">>"
  ("!" "<<")
  ("!" ">>")
] @operator

[
  "."
  "^"
  "$"
  "%"
  ("!" "%")
] @constant.language

[
  "("
  ")"
  "["
  ("!" "[")
  "["
  "]"
  "{"
  "}"
]  @punctuation.bracket

[
  "let"
  "enable"
  "disable"
] @keyword.other

"|" @keyword.operator

[
  "U"
  "lazy"
  "greedy"
  "range"
  "base"
  "atomic"
;  "if"
;  "else"
;  "recursion"
  "regex"
;  "test"
] @keyword.control

[
  "U"
  "lazy"
  "greedy"
  "range"
  "base"
  "atomic"
;  "if"
;  "else"
;  "recursion"
  "regex"
;  "test"
] @keyword.control

; TODO: support test keyword

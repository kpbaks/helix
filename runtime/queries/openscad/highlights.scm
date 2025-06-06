; Includes
(identifier) @variable

"include" @keyword.control.import

(include_path) @string.special.path

; Functions

(function_item
  (identifier) @function
)
(function_item
  parameters: (parameters (parameter (assignment value: (_) @constant)))
)
(function_call name: (identifier) @function)
(function_call
  arguments: (arguments (assignment name: _ @variable.parameter))
)
; for the puroposes of distintion since modules are "coloured" impure functions, we will treat them as methods
(module_item (identifier) @function.method)
(module_item
  parameters: (parameters (parameter (assignment value: (_) @constant)))
)
(module_call name: (identifier) @function.method)
(module_call
  arguments: (arguments (assignment name: _ @variable.parameter))
)

; assertion statements/expression arguments behave similar to function calls
(assert_expression
  arguments: (arguments (assignment name: _ @variable.parameter))
)
(assert_statement
  arguments: (arguments (assignment name: _ @variable.parameter))
)

(echo_expression
  arguments: (arguments (assignment name: _ @variable.parameter))
)
(echo_expression "echo" @function.builtin)

; Variables
(parameter
  [_ @variable.parameter (assignment name: _ @variable.parameter)]
)
(special_variable) @variable.builtin
(undef) @constant.builtin

; Types/Properties/
(dot_index_expression index: (_) @variable.other.member)

; Keywords
[
  "module"
  "function"
  "let"
  "assign"
  "use"
  "each"
  (assert_statement "assert")
  (assert_expression "assert")
] @keyword

; Operators
[
  "||"
  "&&"
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "+"
  "-"
  "*"
  "/"
  "%"
  "^"
  "!"
  ":"
  "="
] @operator

; Builtin modules
(module_call
  name: (identifier) @function.builtin
  (#any-of? @function.builtin
    "circle"
    "color"
    "cube"
    "cylinder"
    "difference"
    "hull"
    "intersection"
    "linear_extrude"
    "minkowski"
    "mirror"
    "multmatrix"
    "offset"
    "polygon"
    "polyhedron"
    "projection"
    "resize"
    "rotate"
    "rotate_extrude"
    "scale"
    "sphere"
    "square"
    "surface"
    "text"
    "translate"
    "union"
    "echo"
  )
)
(
  (identifier) @identifier
  (#eq? @identifier "PI")
) @constant.builtin

; Conditionals
[
  "if"
  "else"
] @keyword.control.conditional
(ternary_expression
  ["?" ":"] @keyword.control.conditional
)

; Repeats
[
  "for"
  "intersection_for"
] @keyword.control.repeat

; Literals
(integer) @constant.numeric.integer
(float) @constant.numeric.float
(string) @string
(escape_sequence) @constant.character.escape
(boolean) @constant.builtin.boolean

; Misc
(modifier
  [
    "*"
    "!"
    "#"
    "%"
  ] @keyword.storage.modifier
)
["{" "}"] @punctuation.bracket
["(" ")"] @punctuation.bracket
["[" "]"] @punctuation.bracket
[
  ";"
  ","
  "."
] @punctuation.delimiter

; Comments
[(line_comment) (block_comment)] @comment

((comment) @injection.content
 (#set! injection.language "comment"))

; string match [-r | --regex] "<pattern>"
; string replace [-r | --regex] "<pattern>"
((command
  name: (word) @_command (#eq? @_command "string")
  .
  argument: (word) @_subcommand (#any-of? @_subcommand "match" "replace")
  argument: (word) @_regex_flag (#any-of? @_regex_flag "-r" "--regex")
  argument: (word)*
  argument: [(single_quote_string) (double_quote_string)] @injection.content)
  (#set! injection.language "regex"))

; [ef]?grep
((command
  name: (word) @_command (#match? @_command "^[ef]?grep$")
  argument: [(single_quote_string) (double_quote_string)] @injection.content)
  (#set! injection.language "regex"))

; TODO: support `awk -F, "<program>"`
; awk "<program>"
((command
  name: (word) @_command (#any-of? @_command "awk" "gawk")
  .
  argument: [(single_quote_string) (double_quote_string)] @injection.content)
  (#set! injection.language "awk"))

; sed -e ""
; ((command
;   name: (word) @_command (#eq? @_command "sed")
;   .
;   argument: [(single_quote_string) (double_quote_string)] @injection.content)
;   (#set! injection.language "sed"))

; python -c "..."
((command
  name: (word) @_command (#any-of? @_command "python" "python3")
  argument: (word) @_command_flag (#eq? @_command_flag "-c")
  .
  argument: [(single_quote_string) (double_quote_string)] @injection.content)
  (#set! injection.language "python"))

; ruby -e "..."
((command
  name: (word) @_command (#any-of? @_command "ruby")
  argument: (word) @_command_flag (#eq? @_command_flag "-e")
  .
  argument: [(single_quote_string) (double_quote_string)] @injection.content)
  (#set! injection.language "ruby"))

; perl -[eE] "..."
((command
  name: (word) @_command (#eq? @_command "perl")
  argument: (word) @_command_flag (#any-of? @_command_flag "-e" "-E")
  .
  argument: [(single_quote_string) (double_quote_string)] @injection.content)
  (#set! injection.language "perl"))

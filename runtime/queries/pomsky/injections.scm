((comment) @injection.content
  (#set! injection.language comment))

((inline_regex (string) @injection.content)
  (#set! injection.language regex))

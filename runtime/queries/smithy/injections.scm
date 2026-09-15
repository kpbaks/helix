((comment) @injection.content
  (#set! injection.language "comment"))

; https://smithy.io/2.0/spec/constraint-traits.html#smithy-api-pattern-trait
; e.g.
; ```
; @pattern("^[A-Za-z0-9 ]+$")
; string CityId
; ```
((trait_statement
  (shape_id
    (root_shape_id
      (identifier) @_trait))
  (trait_body
    (trait_body_value
      (trait_body_node
        (literal
          (string
            (string_fragment) @injection.content))))))
  (#eq? @_trait "pattern")
  (#set! injection.language "regex"))

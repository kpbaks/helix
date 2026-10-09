; NOTE: copied ad verbatim from https://github.com/kjanat/svg/blob/26c7414e2f02f854dab4102fba4c930936d2c18c/grammars/tree-sitter-svg-paint/queries/highlights.scm

; Paint/color highlights for the injected svg_paint grammar.
; Relocated verbatim from tree-sitter-svg when paint/color was evicted; node
; names are identical, so editor themes keep the same captures.

(hex_color) @constant
(color_function_name) @function.call
(named_color) @constant

(color_colorspace) @type.builtin
(color_interpolation_space) @type.builtin
(color_mix_in_keyword) @keyword
(color_hue_direction) @keyword.modifier
(color_hue_keyword) @keyword
(color_none) @constant.builtin

(paint_value
  ["none" "currentColor" "context-fill" "context-stroke" "inherit"] @constant.builtin)

(iri_reference) @link_uri

(number) @number
(percentage "%" @type)
(angle_unit) @type

["(" ")"] @punctuation.bracket
"," @punctuation.delimiter
"/" @operator

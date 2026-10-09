; NOTE: copied ad verbatim from https://github.com/kjanat/svg/blob/26c7414e2f02f854dab4102fba4c930936d2c18c/grammars/tree-sitter-svg-transform/queries/highlights.scm

; Transform-list highlights for the injected svg_transform grammar.

(matrix_transform "matrix" @function.builtin)
(translate_transform "translate" @function.builtin)
(scale_transform "scale" @function.builtin)
(rotate_transform "rotate" @function.builtin)
(skew_x_transform "skewX" @function.builtin)
(skew_y_transform "skewY" @function.builtin)

(number) @number

["(" ")"] @punctuation.bracket
"," @punctuation.delimiter

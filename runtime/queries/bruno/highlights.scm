(keyword) @keyword


(key) @variable.parameter
(value) @string

(rawtext) @string

(array_value) @variable

[
  ":"
  ","
] @punctuation.delimiter

[
  "{" "}"
  "[" "]"
] @punctuation.bracket

; ((value) @string.special.url
;   (#match? @string.special.url "^https?://"))

(dictionary_pair
  (key) @variable.parameter (#eq? @variable.parameter "url")
  (value) @string.special.url)

((value) @constant.numeric
  (#match? @constant.numeric "^\d+$"))

(meta
  (keyword) @special
  (dictionary
    (dictionary_pair
      (key) @attribute (#eq? @attribute "type")
      (value) @type.enum.variant)))

(headers
  (dictionary
    (dictionary_pair
      (key) @attribute)))

; TODO: highlight disabled keys (prefixed with ~)
; vars:secret [
;   access_key,
;   access_secret,
;   ~transactionId
; ]

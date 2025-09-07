; ((comment) @injection.content
;   (#set! injection.language "comment"))

; TODO: inject into tests and body:{xml,graphql}
;
; https://docs.usebruno.com/bru-lang/tag-reference

; tests {
;   test("should be able to login", function() {
;     expect(res.status).to.equal(201);
;   });

;   test("should receive the token", function() {
;     expect(res.body.token).to.be.a('string');
;   });
; }

(scriptres
  (textblock
    (rawtext) @injection.content)
  (#set! injection.language "javascript"))

(scriptreq
  (textblock
    (rawtext) @injection.content)
  (#set! injection.language "javascript"))


(body
  (textblock
    (rawtext) @injection.content)
  (#set! injection.language "json"))

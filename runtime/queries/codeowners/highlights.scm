(comment) @comment
(path) @string.special.path

; TODO: use `#match?` on path nodes to check if they end in '/' e.g. "docs/" and highlight as directory

; TODO: highlight the owner differently if it is an email `@string.special.url`
; ```
; # You can also use email addresses if you prefer. They'll be
; # used to look up users just like we do for commit author
; # emails.
; *.go docs@example.com
; ```

; TODO: highlight files with no explicit owners
; ```
; # In this example, @octocat owns any file in the `/apps`
; # directory in the root of your repository except for the `/apps/github`
; # subdirectory, as its owners are left empty. Without an owner, changes
; # to `apps/github` can be made with the approval of any user who has
; # write access to the repository.
; /apps/ @octocat
; /apps/github
; ```

; TODO: highlight teams differently
; ```
; # Teams can be specified as code owners as well. Teams should
; # be identified in the format @org/team-name. Teams must have
; # explicit write access to the repository. In this example,
; # the octocats team in the octo-org organization owns all .txt files.
; *.txt @octo-org/octocats
; ```

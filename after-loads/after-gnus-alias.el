(setq gnus-alias-identity-alist
      '(("default" nil "Svend Sorensen <svend@ciffer.net>" nil nil nil)
	("uw" nil "Svend Sorensen <svends@uw.edu>" nil (("Bcc" . "svends@uw.edu")) nil nil)))
(setq gnus-alias-default-identity "default")
(setq gnus-alias-identity-rules
      '(("to-uw" ("any" "svends@\\(uw.edu\\|u\\.washington.edu\\|washington\\.edu\\)" both) "uw")
	("from-uw" ("from" "@\\(uw.edu\\|u\\.washington.edu\\|washington\\.edu\\)" both) "uw")))

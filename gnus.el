;; Gmane
(setq gnus-select-method
      '(nntp "news.gmane.org"))

;; Debugging
;; (setq imap-log t)

;; Other accounts, including IMAP
(setq gnus-secondary-select-methods
      '((nnimap "uw"
		(nnimap-address "svends.deskmail.washington.edu")
		(nnimap-server-port 993)
		(nnimap-stream ssl)
		;; This doesn't work
		;; (nnimap-authenticator gssapi)
		(nnimap-authenticator login)
		;; TODO: Playing it safe. Is this required?
		(nnimap-expunge-on-close 'never)
		(nnimap-list-pattern ("INBOX" "mail/*")))))

;; x-identity is for gnus-identities
;; https://github.com/renard/gnus-identities
(setq gnus-posting-styles
      '((".*"
	 (x-identity "default")
	 (address user-mail-address))
	("uw"
	 (x-identity "uw")
         (address "svends@uw.edu")
         ("Bcc" "svends@uw.edu"))))

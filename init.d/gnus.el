(eval-after-load 'gnus
  '(progn
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

     (setq gnus-posting-styles
	   '((".*"
	      (address "svend@ciffer.net"))
	     ("uw"
	      (address "svends@uw.edu")
	      ("Bcc" "svends@uw.edu"))))))

(eval-after-load 'notmuch
  '(progn
     ;; notmuch-always-prompt-for-sender requires ido-mode
     ;; Add (ido-mode t) to emacs configuration
     (setq notmuch-always-prompt-for-sender t)

     ;; Use Bcc instead of Fcc
     (setq notmuch-fcc-dirs nil)

     (setq notmuch-saved-searches '(("Personal Inbox" . "tag:inbox and not tag:uw and (not tag:lists or (tag:lists::wallop_2012 or tag:lists::cheastyboys))")
				    ("UW Inbox" . "tag:inbox and tag:uw and (not tag:lists or (tag:lists::cirg-adm or tag:lists::cirg-core)) and not from:root and not tag:nagios")
				    ("Action" . "tag:action")
				    ("Waiting" . "tag:waiting")
				    ("CIRG Nagios" . "tag:inbox and tag:uw and tag:nagios and not tag:lists")
				    ("Secondary Lists" . "tag:inbox and (tag:lists::notmuch or tag:lists::vcs-home or tag:lists::techsupport)")
				    ("Debian Security Inbox" . "tag:inbox and tag:lists::debian-security-announce")))

     ;; Show newest mail first
     (setq notmuch-search-oldest-first nil)

     ;; Notmuch remote setup (on all hosts except garnet)
     (when (not (string= system-name "garnet.ciffer.net"))
       (setq notmuch-command "notmuch-remote"))

     ;; Getting Things Done (GTD) keybindings

     (setq notmuch-tag-macro-alist
	   (list
	    '("a" "+action" "-waiting" "-inbox")
	    '("w" "-action" "+waiting" "-inbox")
	    '("d" "-action" "-waiting" "-inbox")))

     (defun notmuch-search-apply-tag-macro (key)
       (interactive "k")
       (let ((macro (assoc key notmuch-tag-macro-alist)))
	 (apply 'notmuch-search-tag-thread (cdr macro))))

     (defun notmuch-show-apply-tag-macro (key)
       (interactive "k")
       (let ((macro (assoc key notmuch-tag-macro-alist)))
	 (apply 'notmuch-show-tag-message (cdr macro))))

     (define-key notmuch-search-mode-map "`" 'notmuch-search-apply-tag-macro)
     (define-key notmuch-show-mode-map "`" 'notmuch-show-apply-tag-macro)

     ;; Work around bug with notmuch and emacs-snapshot
     ;; http://notmuchmail.org/pipermail/notmuch/2012/008405.html
     (require 'gnus-art)))

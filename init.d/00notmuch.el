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
				     ("Wating" . "tag:waiting")
				     ("CIRG Nagios" . "tag:inbox and tag:uw and tag:nagios and not tag:lists")
				     ("Notmuch Inbox" . "tag:inbox and tag:lists::notmuch")
				     ("Debian Security Inbox" . "tag:inbox and tag:lists::debian-security-announce")))

      ;; Show newest mail first
      (setq notmuch-search-oldest-first nil)

      ;; Notmuch remote setup (on all hosts except garnet)
      (when (not (string= system-name "garnet.ciffer.net"))
	(setq notmuch-command "notmuch-remote"))))

;; Notmuch settings

(eval-after-load 'notmuch
  '(progn
     ;; notmuch-always-prompt-for-sender requires ido-mode
     ;; Add (ido-mode t) to emacs configuration
     (setq notmuch-always-prompt-for-sender t)

     (setq notmuch-fcc-dirs '(("svends@\\(uw.edu\\|u\\.washington.edu\\|washington\\.edu\\)" . "uw")))

     (setq notmuch-saved-searches '(("Personal Inbox" . "tag:inbox and not tag:uw and not tag:lists")
				    ("UW Inbox" . "tag:inbox and tag:uw and not tag:lists and not from:root and not tag:nagios")
				    ("CIRG Lists" . "tag:inbox and tag:cirg-adm or tag:cirg-core and tag:inbox")
				    ("CIRG Nagios" . "tag:inbox and tag:uw and tag:nagios")
				    ("waiting" . "tag:waiting")))

     ;; Show newest mail first
     (setq notmuch-search-oldest-first nil)

     ;; Address completion
     ;; http://notmuchmail.org/emacstips/#index13h2
     ;; Notmuch loads notmuch-address automatically
     ;; (require 'notmuch-address)
     (setq notmuch-address-command "uw-email-search")
     (notmuch-address-message-insinuate)

     ;; Notmuch remote setup (on all hosts except garnet)
     (when (not (string= system-name "garnet.ciffer.net"))
       (setq notmuch-command "notmuch-remote")
       ;; We do not have direct access to mail folders
       ;;
       ;; TODO: Need a configure Bcc in this case.
       (setq notmuch-fcc-dirs nil))))

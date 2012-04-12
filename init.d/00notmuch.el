;; Notmuch settings

(eval-after-load 'notmuch
  '(progn
     ;; notmuch-always-prompt-for-sender requires ido-mode
     ;; Add (ido-mode t) to emacs configuration
     (setq notmuch-always-prompt-for-sender t)

     (setq notmuch-fcc-dirs '(("svends@\\(uw.edu\\|u\\.washington.edu\\|washington\\.edu\\)" . "uw")))

     (setq notmuch-saved-searches '(("Personal Inbox (unread)" . "tag:inbox and not tag:uw and not tag:lists and tag:unread")
				    ("Personal Inbox" . "tag:inbox and not tag:uw and not tag:lists")
				    ("UW Inbox (unread)" . "tag:inbox and tag:uw and not tag:lists and not from:root and not tag:nagios and tag:unread")
				    ("UW Inbox" . "tag:inbox and tag:uw and not tag:lists and not from:root and not tag:nagios")
				    ("CIRG Lists" . "tag:inbox and tag:cirg-adm or tag:cirg-core and tag:inbox")
				    ("CIRG Nagios" . "tag:inbox and tag:uw and tag:nagios and not tag:lists")
				    ("Notmuch Inbox" . "tag:inbox and tag:notmuch")
				    ("Wallop Inbox" . "tag:inbox and tag:wallop_2012")
				    ("waiting" . "tag:waiting")))

     ;; Show newest mail first
     (setq notmuch-search-oldest-first nil)

     ;; Notmuch remote setup (on all hosts except garnet)
     (when (not (string= system-name "garnet.ciffer.net"))
       (setq notmuch-command "notmuch-remote")
       ;; We do not have direct access to mail folders
       ;;
       ;; Bcc is setup in message-mode configuration.
       (setq notmuch-fcc-dirs nil))))

;; notmuch-address is useful in message-mode even if we are not using
;; notmuch
(eval-after-load 'notmuch-address
  '(progn
     ;; Notmuch address completion
     ;;
     ;; http://notmuchmail.org/emacstips/#index13h2
     ;;
     ;; Notmuch loads notmuch-address automatically, but we may use
     ;; notmuch-address without loading notmuch.
     (setq notmuch-address-command "uw-email-search")
     ;; notmuch-address.el automatically calls
     ;; notmuch-message-insinuate, but notmuch-address-command might
     ;; not be set yet
     ;;
     ;; http://git.notmuchmail.org/git/notmuch/blob/f38bc44653ad910abb95add6b09321da11f50581:/emacs/notmuch-address.el#l93
     (notmuch-address-message-insinuate)))

(eval-after-load 'message
  '(progn
     (require 'notmuch-address)))
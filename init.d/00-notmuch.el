;; Notmuch settings

(eval-after-load "notmuch"
  '(progn

     ;; notmuch-always-prompt-for-sender requires ido-mode
     ;; Add (ido-mode t) to emacs configuration
     (setq notmuch-always-prompt-for-sender t)

     (setq notmuch-fcc-dirs '(("svends@uw.edu" . "uw")
			      ("svends@u.washington.edu" . "uw")
			      ("svends@washington.edu" . "uw")))

     (setq notmuch-saved-searches '(("Personal Inbox" . "tag:inbox and not tag:uw and not tag:lists")
				    ("UW Inbox" . "tag:uw and tag:inbox and not tag:lists and not from:root")
				    ("CIRG Lists" . "tag:cirg-adm and tag:inbox or tag:cirg-core and tag:inbox")
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
       (setq notmuch-fcc-dirs nil))

     ))

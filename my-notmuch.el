;; Notmuch settings

;; notmuch-always-prompt-for-sender requires ido-mode
;; Add (ido-mode t) to emacs configuration
(setq notmuch-always-prompt-for-sender t)

(setq notmuch-fcc-dirs '(("svends@uw.edu" . "uw")
			 ("svends@u.washington.edu" . "uw")
			 ("svends@washington.edu" . "uw")))

(setq notmuch-saved-searches '(("Personal Inbox" . "tag:inbox and not tag:uw and not tag:lists")
                               ("UW Inbox" . "tag:uw and tag:inbox and not tag:lists and not from:root")
                               ("waiting" . "tag:waiting")))

;; Show newest mail first
(setq notmuch-search-oldest-first nil)

;; Address completion
;; http://notmuchmail.org/emacstips/#index13h2
;; Notmuch loads notmuch-address automatically
;; (require 'notmuch-address)
(setq notmuch-address-command "uw-email-search")
(notmuch-address-message-insinuate)

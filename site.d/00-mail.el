;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mail/message-mode settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Close mail buffer after sending
;; http://notmuchmail.org/emacstips/#index3h2
(setq message-kill-buffer-on-exit t)

;; Send mail using sendmail (msmtp)
;;
;; Defaults to using mail command (message-send-mail-with-mailclient).
(setq message-send-mail-function 'message-send-mail-with-sendmail)

;; Use MSMTP with auto-smtp selection
;; http://www.emacswiki.org/emacs/GnusMSMTP#toc3
;;
;; 'message-sendmail-f-is-evil nil' is the default on Debian squeeze
;; (emacs >= 23.2+1-5)
(setq sendmail-program "/usr/bin/msmtp"
      mail-specify-envelope-from t
      mail-envelope-from 'header
      message-sendmail-envelope-from 'header)

;; Enable flyspell for composing mail
;; http://www.gnus.org/manual/big-message.html#SEC32
(add-hook 'message-setup-hook (lambda() (flyspell-mode t)))

;; Gnome terminal seems to translate M-RET to C-M-j
(add-hook 'message-setup-hook
	  (lambda ()
	    (if window-system
		nil
	      (progn
		(define-key message-mode-map "\C-\M-j" 'message-newline-and-reformat)))))


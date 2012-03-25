;; Mail/message-mode settings

;; Close mail buffer after sending
(setq message-kill-buffer-on-exit t)

;; Send mail using sendmail (actually msmtp)
;;
;; message-send-mail-function's default value should be
;; message-send-mail-with-sendmail but it was
;; message-send-mail-with-mailclient on one of my systems.
;;
;; TODO: Coudn't reproduce the problem when I ran 'emacs -q'.
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

;; Bind C-M-j to message-newline-and-reformat
;;
;; Gnome terminal seems to translate M-RET to C-M-j. The GUI shouldn't
;; have this problem.
(add-hook 'message-setup-hook
	  (lambda ()
	    (if window-system
		nil
	      (progn
		(define-key message-mode-map "\C-\M-j" 'message-newline-and-reformat)))))


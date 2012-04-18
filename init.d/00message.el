(eval-after-load 'message
  '(progn
     ;; Close mail buffer after sending
     (setq message-kill-buffer-on-exit t)

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

     ;; Enable gnus-alias
     (add-hook 'message-setup-hook 'gnus-alias-determine-identity)
     (define-key message-mode-map (kbd "C-c C-p") 'gnus-alias-select-identity)

     ;; Bind C-M-j to message-newline-and-reformat
     ;;
     ;; Gnome terminal seems to translate M-RET to C-M-j. The GUI shouldn't
     ;; have this problem.
     (add-hook 'message-setup-hook
	       (lambda ()
		 (if window-system
		     nil
		   (progn
		     (define-key message-mode-map "\C-\M-j" 'message-newline-and-reformat)))))))

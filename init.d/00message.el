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

     ;; Enable gnus-alias
     (add-hook 'message-setup-hook 'gnus-alias-determine-identity)
     (define-key message-mode-map (kbd "C-c C-p") 'gnus-alias-select-identity)

     ;; Enable notmuch-address completion
     (notmuch-address-message-insinuate)

     (defun my-setup-message-mode ()
       "My preferences for message mode"
       (interactive)
       ;; Enable flyspell for composing mail
       ;; http://www.gnus.org/manual/big-message.html#SEC32
       (flyspell-mode t)

       ;; Bind C-M-j to message-newline-and-reformat
       ;;
       ;; Gnome terminal seems to translate M-RET to C-M-j. The GUI shouldn't
       ;; have this problem.
       (if window-system
	   nil
	 (progn
	   (define-key message-mode-map "\C-\M-j" 'message-newline-and-reformat))))

     (add-hook 'message-setup-hook 'my-setup-message-mode)))

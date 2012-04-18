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

     (defun my-message-header-setup-hook ()
       ;; Canonicalize my UW email address
       (when (string-match "svends@\\(uw.edu\\|u\\.washington.edu\\|washington\\.edu\\)"
			   (message-fetch-field "From"))
	 (message-remove-header "From")
	 (message-delete-line)
	 (insert "From: " (let ((user-mail-address "svends@uw.edu")) (message-make-from))
		 "\n"))

       ;; Bcc myself on UW mail if there is no Fcc header
       (when (and (not (message-fetch-field "Bcc"))
		  (string-match "svends@uw\.edu"
				(message-fetch-field "From"))
		  (not (message-fetch-field "Fcc")))
	 (insert "Bcc: svends@uw.edu\n")))

     (add-hook 'message-header-setup-hook
	       'my-message-header-setup-hook)

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

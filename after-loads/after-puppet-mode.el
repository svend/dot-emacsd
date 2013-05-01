(add-hook 'puppet-mode-hook 'flymake-puppet-load)

; puppet-mode rebinds RET to newline-and-indent. Remove this
; keybinding.
(define-key puppet-mode-map "\C-m" nil)

(defun my-setup-puppet-mode ()
  "My preferences for puppet mode"
  (interactive)
  (setq my-puppet-align-rules-list
	'((puppet-arrow-assignment
	   (regexp . "\\(\\s-*\\)=>\\(\\s-*\\)")
	   (group . (1 2)))))

  (setq align-mode-rules-list my-puppet-align-rules-list))

(add-hook 'puppet-mode-hook 'my-setup-puppet-mode)

(eval-after-load 'puppet-mode
  '(progn
     (add-hook 'puppet-mode-hook 'flymake-puppet-load)

     (defun my-setup-puppet-mode ()
       "My preferences for puppet mode"
       (interactive)
       (setq my-puppet-align-rules-list
	     '((puppet-arrow-assignment
		(regexp . "\\(\\s-*\\)=>\\(\\s-*\\)")
		(group . (1 2)))))

       (setq align-mode-rules-list my-puppet-align-rules-list))

     (add-hook 'puppet-mode-hook 'my-setup-puppet-mode)))

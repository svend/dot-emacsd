(eval-after-load 'puppet-mode
  '(progn
     (add-hook 'puppet-mode-hook 'flymake-puppet-load)

     (setq my-puppet-align-rules-list
	   '((puppet-arrow-assignment
	      (regexp . "\\(\\s-*\\)=>\\(\\s-*\\)")
	      (group . (1 2)))))
     (add-hook 'puppet-mode-hook
	       (lambda ()
		 (setq align-mode-rules-list my-puppet-align-rules-list)))))

(eval-after-load 'puppet-mode
  '(progn
     (add-hook 'puppet-mode-hook 'flymake-puppet-load)
     ;; TODO: Get rid of "require"
     (require 'align)
     (add-to-list 'align-rules-list
		  '(puppet-arrow-assignment
		    (regexp . "\\(\\s-*\\)=>\\(\\s-*\\)")
		    (group . (1 2))
		    (modes . '(puppet-mode))))))

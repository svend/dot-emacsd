(eval-after-load 'puppet-mode
  '(progn
     (add-hook 'puppet-mode-hook 'flymake-puppet-load)))

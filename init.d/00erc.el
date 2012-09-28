(eval-after-load 'erc
  '(progn

     ;; Disable erc-track C-c keybindings, which conflict with
     ;; ansi-term
     (setq erc-track-enable-keybindings nil)))

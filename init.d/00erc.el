(eval-after-load 'erc
  '(progn
     ;; Do not notify for join, part, or quit
     (add-to-list 'erc-track-exclude-types "JOIN")
     (add-to-list 'erc-track-exclude-types "PART")
     (add-to-list 'erc-track-exclude-types "QUIT")

     ;; Disable erc-track C-c keybindings, which conflict with
     ;; ansi-term
     (setq erc-track-enable-keybindings nil)))

(eval-after-load 'dns
  '(progn
     ;; Do not auto increment serial (C-c C-s to increment)
     (setq dns-mode-soa-auto-increment-serial nil)))

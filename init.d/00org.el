(eval-after-load 'org
  '(progn
     (require 'org-notmuch)
     (setq org-startup-indented t)
     (add-hook 'org-mode-hook 'auto-fill-mode)))

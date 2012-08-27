(eval-after-load 'org
  '(progn
     (require 'org-notmuch)
     (setq org-startup-indented t)
     (add-hook 'org-mode-hook 'auto-fill-mode)
     (add-hook 'org-mode-hook 'turn-on-flyspell 'append)))

(require 'org-notmuch)
(add-hook 'org-mode-hook 'auto-fill-mode)
(setq org-replace-disputed-keys t)
(setq org-src-fontify-natively t)
(setq org-src-preserve-indentation t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((perl . t)
   (ruby . t)
   (sh . t)
   (python . t)
   (emacs-lisp . t)))

;; Load org-mode init file

(when (>= emacs-major-version 24)
  (org-babel-load-file (expand-file-name "emacs-init.org"
					 user-emacs-directory)))

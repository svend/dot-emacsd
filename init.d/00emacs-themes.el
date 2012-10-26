;; Add all vendor themes to load-path
(dolist (file (directory-files "~/.emacs.d/themes" t "\\w+"))
  (when (file-directory-p file)
    (add-to-list 'custom-theme-load-path file)))

(load-theme 'solarized-light t)

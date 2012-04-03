;; Add all vendor subdirectories to load-path
(dolist (file (directory-files "~/.emacs.d/vendor" t "\\w+"))
  (when (file-directory-p file)
    (add-to-list 'load-path file)))

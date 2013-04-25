;; Emacs settings

(when (>= emacs-major-version 24)
  (defvar user-emacs-init-path
    "~/.emacs.d/init.d"
    "The full path to user init directory")

  ;; Load all *.el files under user init directory
  (dolist (file (directory-files user-emacs-init-path t "\\.el$"))
    (load file)))

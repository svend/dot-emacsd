;; Emacs settings

(defvar user-emacs-init-path
  "~/.emacs.d/init.d"
  "The full path to user init directory")

;; Load all n*.el files under user init directory
(dolist (file (directory-files user-emacs-init-path t "^[0-9]+.*\\.el$"))
  (load file))

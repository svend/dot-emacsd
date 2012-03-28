;; Emacs settings

(defvar emacs-user-init-path
  "~/.emacs.d/init.d"
  "The full path to user init directory")

;; Load all n*.el files under user init directory
(dolist (file (directory-files emacs-user-init-path t "^[0-9]+.*\\.el$"))
  (load file))

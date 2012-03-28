;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar emacs-conf-path
  "~/.emacs.d/init.d"
  "The full path to the emacs config directory")

(dolist (file (directory-files emacs-conf-path t "^[0-9]+.*\\.el$"))
  (load file))

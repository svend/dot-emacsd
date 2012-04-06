;; cl is required for git-commit-mode to work
(require 'cl)

;; Put all backups and auto-saves under ~/.cache
(setq backup-directory-alist
      `((".*" . ,"~/.cache/emacs/backup/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.cache/emacs/backup/" t)))

;; Put auto-save list file under ~/.cache
(setq auto-save-list-file-prefix "~/.cache/emacs/auto-save-list/.saves-")

;; Require an EOL at end of files
(setq require-final-newline t)

;; One space after sentences
(setq sentence-end-double-space nil)

;; Enable disabled commands
(put 'dired-find-alternate-file 'disabled nil)

;; Use GUI web browser if it is available
(if (executable-find "x-www-browser")
    (progn
      (setq browse-url-generic-program "x-www-browser")
      (setq browse-url-browser-function 'browse-url-generic)))

;; Move temporary files to ~/.cache/emacs

;; Put all backups and auto-saves under ~/.cache
(setq backup-directory-alist
      `((".*" . ,"~/.cache/emacs/backup/")))
;; TODO: I'm still getting an occasional auto-save file in the working
;; directory.
(setq auto-save-file-name-transforms
      `((".*" ,"~/.cache/emacs/backup/" t)))

;; Put auto-save list file under ~/.cache
(setq auto-save-list-file-prefix "~/.cache/emacs/auto-save-list/.saves-")

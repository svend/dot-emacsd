;; Move temporary files to ~/.cache/emacs

;; Put all backups and auto-saves under ~/.cache
(setq backup-directory-alist
      `((".*" . ,"~/.cache/emacs/backup/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.cache/emacs/backup/" t)))

;; Put auto-save list file under ~/.cache
(setq auto-save-list-file-prefix "~/.cache/emacs/auto-save-list/.saves-")

;; TODO: Lock files, which can be confused for auto-save files are
;; created in the same directory as the file being edited. I don't
;; know of any way to disable this feature.
;;
;; http://lists.gnu.org/archive/html/emacs-devel/2011-07/msg01020.html

;; Move temporary files to ~/.cache/emacs

;; Backup and auto-saves
(setq backup-directory-alist
      `((".*" . ,"~/.cache/emacs/backup/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.cache/emacs/backup/" t)))

;; Auto-save list files
(setq auto-save-list-file-prefix "~/.cache/emacs/auto-save-list/.saves-")

;; Lock files
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/File-Locks.html
;;
;; TODO: Lock are created in the same directory as the file being
;; edited. I don't know of any way to disable this feature.
;;
;; http://lists.gnu.org/archive/html/emacs-devel/2011-07/msg01020.html

;; URL cache
(setq url-cache-directory "~/.cache/emacs/url")

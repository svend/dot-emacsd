;; Move temporary files to ~/.cache/emacs

;; Backup and auto-saves
(setq backup-directory-alist
      `((".*" . ,"~/.cache/emacs/backup/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.cache/emacs/backup/" t)))

(setq desktop-path '("~/.cache/emacs/"))
(desktop-save-mode 1)

;; Auto-save list files
(setq auto-save-list-file-prefix "~/.cache/emacs/auto-save-list/.saves-")

;; Lock files
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/File-Locks.html
;;
;; Locks are created in the same directory as the file being
;; edited. They can be disabled as of 24.3.
;;
;; http://lists.gnu.org/archive/html/emacs-devel/2011-07/msg01020.html
(setq create-lockfiles nil)

;; URL cache
(setq url-cache-directory "~/.cache/emacs/url")

(setq save-place-file "~/.cache/emacs/places")

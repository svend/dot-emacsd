;; Move temporary files to ~/.cache/emacs

;; Backup and auto-saves
(setq backup-directory-alist
      `((".*" . ,(expand-file-name "backup/" emacs-cache-dir))))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "backup/" emacs-cache-dir) t)))

(setq desktop-path `(,emacs-cache-dir))
(desktop-save-mode 1)

;; Auto-save list files
(setq auto-save-list-file-prefix (expand-file-name "auto-save-list/.saves-" emacs-cache-dir))

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
(setq url-cache-directory (expand-file-name "url" emacs-cache-dir))

(setq save-place-file (expand-file-name "places" emacs-cache-dir))

;; Minibuffer history
(setq history-length 10000)
(setq savehist-file (expand-file-name "history" emacs-cache-dir))
(setq savehist-mode t)

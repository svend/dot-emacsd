;; Load libraries from .emacs.d
(add-to-list 'load-path "~/.emacs.d/")

;; Put all backups and auto-saves under ~/.cache
(setq backup-directory-alist
      `((".*" . ,"~/.cache/emacs/backup/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.cache/emacs/backup/" t)))

;; Hide welcome screen
(setq inhibit-splash-screen t)

;; Require an EOL at end of files
(setq require-final-newline t)

;; One space after sentences
(setq sentence-end-double-space nil)

;; Show trailing whitespace
;; This can be an annoyting default
;; (setq-default show-trailing-whitespace t)

;; Display date and time in 24 hour format
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)

;; Display clock in the status bar
(display-time-mode t)

;; Disable menu bar for text consoles
;;
;; This requires two hooks
;;
;; http://stackoverflow.com/questions/5795451/how-to-detect-that-emacs-is-in-terminal-mode/5801740#5801740
;;
;; TODO: This throws an error when emacsclient is run

;; (add-hook 'after-make-frame-functions
;;   (lambda ()
;;     (if (not window-system)
;;       (menu-bar-mode -1))))
;; (add-hook 'after-init-hook
;;   (lambda ()
;;     (if (not window-system)
;;       (menu-bar-mode -1))))

;; Disable tool bar
(tool-bar-mode 0)

;; Enable disabled commands
(put 'dired-find-alternate-file 'disabled nil)

;; ;;; This was installed by package-install.el.
;; ;;; This provides support for the package system and
;; ;;; interfacing with ELPA, the package archive.
;; ;;; Move this code earlier if you want to reference
;; ;;; packages in your .emacs.
;; (when
;;     (load
;;      (expand-file-name "~/.emacs.d/elpa/package.el"))
;;   (package-initialize))

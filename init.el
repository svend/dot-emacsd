;; Load org-mode init file

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(when (>= emacs-major-version 24)
  (require 'org)
  (org-babel-load-file
   (expand-file-name "emacs-init.org" user-emacs-directory)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-input-ignoredups t)
 '(comint-input-ring-size 10000)
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (svend sanityinc-tomorrow-day)))
 '(dired-dwim-target t)
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(enable-local-variables :safe)
 '(history-length 10000)
 '(jabber-alert-presence-hooks nil)
 '(jabber-auto-reconnect t)
 '(jabber-history-enabled t)
 '(jabber-keepalive-interval 30)
 '(js-indent-level 2)
 '(json-reformat:indent-width 2)
 '(magit-completing-read-function (quote magit-ido-completing-read))
 '(ns-pop-up-frames nil)
 '(org-default-notes-file "~/doc/org/notes.org")
 '(org-directory "~/doc/org")
 '(org-reverse-note-order t)
 '(org-src-window-setup (quote other-window))
 '(reb-re-syntax (quote string))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))

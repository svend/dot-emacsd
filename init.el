;; Load org-mode init file

(when (>= emacs-major-version 24)
  (require 'org)
  (org-babel-load-file
   (expand-file-name "emacs-init.org" user-emacs-directory)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(alert-default-style (quote notifier))
 '(comint-input-ring-size 10000)
 '(custom-enabled-themes (quote (tango-plus)))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(electric-pair-mode t)
 '(history-length 10000)
 '(indent-tabs-mode nil)
 '(jabber-alert-presence-hooks nil)
 '(jabber-auto-reconnect t)
 '(jabber-history-enabled t)
 '(jabber-keepalive-interval 30)
 '(magit-completing-read-function (quote magit-ido-completing-read))
 '(ns-pop-up-frames nil)
 '(org-default-notes-file "~/doc/notes.org")
 '(org-directory "~/doc/org")
 '(org-src-window-setup (quote other-window))
 '(projectile-mode-line-lighter "P")
 '(reb-re-syntax (quote string))
 '(require-final-newline t)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(sentence-end-double-space nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans"))))
 '(fixed-pitch ((t (:family "DejaVu Sans Mono"))))
 '(jabber-activity-face ((t (:foreground "#edd400" :weight bold))))
 '(jabber-activity-personal-face ((t (:foreground "#729fcf" :weight bold))))
 '(jabber-chat-prompt-foreign ((t (:foreground "#204a87" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "#75507b" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "#4e9a06" :weight bold))))
 '(linum ((t (:inherit (shadow default) :weight light :height 0.95))))
 '(magit-log-message ((t (:inherit variable-pitch))))
 '(org-checkbox ((t (:inherit (bold fixed-pitch)))))
 '(org-document-title ((t (:weight bold :height 1.4))))
 '(org-level-1 ((t (:height 1.3))))
 '(org-level-2 ((t (:height 1.2))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(sh-heredoc ((t (:foreground "#8f5902"))))
 '(variable-pitch ((t (:family "DejaVu Sans"))))
 '(whitespace-indentation ((t (:background "LightYellow" :foreground "firebrick")))))

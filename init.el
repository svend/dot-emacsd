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
 '(comint-input-ignoredups t)
 '(comint-input-ring-size 10000)
 '(custom-enabled-themes (quote (tango-plus)))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(electric-pair-mode t)
 '(history-length 10000)
 '(jabber-alert-presence-hooks nil)
 '(jabber-auto-reconnect t)
 '(jabber-history-enabled t)
 '(jabber-keepalive-interval 30)
 '(magit-completing-read-function (quote magit-ido-completing-read))
 '(ns-pop-up-frames nil)
 '(org-default-notes-file "~/doc/org/notes.org")
 '(org-directory "~/doc/org")
 '(org-src-window-setup (quote other-window))
 '(reb-re-syntax (quote string))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-changed ((t (:inherit fixed-pitch))))
 '(diff-context ((t (:inherit (shadow fixed-pitch)))))
 '(font-lock-doc-face ((t (:inherit (font-lock-string-face variable-pitch)))))
 '(jabber-activity-face ((t (:foreground "#edd400" :weight bold))))
 '(jabber-activity-personal-face ((t (:foreground "#8ae234" :weight bold))))
 '(jabber-chat-prompt-foreign ((t (:foreground "#204a87" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "#75507b" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "#4e9a06" :weight bold))))
 '(jabber-title-large ((t (:inherit variable-pitch :weight bold :height 2.0 :width ultra-expanded))))
 '(jabber-title-medium ((t (:inherit variable-pitch :weight bold :height 1.6 :width expanded))))
 '(linum ((t (:inherit (shadow default) :weight light))))
 '(magit-log-message ((t (:inherit variable-pitch))))
 '(markdown-inline-code-face ((t (:inherit fixed-pitch :foreground "#8f5902"))))
 '(markdown-pre-face ((t (:inherit fixed-pitch :foreground "#8f5902"))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-background ((t (:inherit fixed-pitch))))
 '(org-checkbox ((t (:inherit (bold fixed-pitch)))))
 '(org-document-title ((t (:weight bold :height 1.4))))
 '(org-level-1 ((t (:height 1.3))))
 '(org-level-2 ((t (:height 1.2))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(sh-heredoc ((t (:foreground "#8f5902"))))
 '(show-paren-match ((t (:background "#fce94f"))))
 '(variable-pitch ((t (:family "DejaVu Sans"))))
 '(whitespace-indentation ((t (:background "LightYellow" :foreground "firebrick")))))

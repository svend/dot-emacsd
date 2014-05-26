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
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(electric-pair-mode t)
 '(jabber-alert-presence-hooks nil)
 '(jabber-auto-reconnect t)
 '(jabber-history-enabled t)
 '(jabber-keepalive-interval 30)
 '(magit-completing-read-function (quote magit-ido-completing-read))
 '(org-src-window-setup (quote other-window))
 '(projectile-mode-line-lighter "P")
 '(reb-re-syntax (quote string)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans"))))
 '(fixed-pitch ((t (:family "DejaVu Sans Mono"))))
 '(linum ((t (:inherit (shadow default) :weight light))))
 '(org-checkbox ((t (:inherit (bold fixed-pitch)))))
 '(org-document-title ((t (:height 1.2))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(variable-pitch ((t (:family "DejaVu Sans")))))

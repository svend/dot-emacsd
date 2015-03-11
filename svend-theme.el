(deftheme svend
  "Created 2015-03-10.")

(custom-theme-set-faces
 'svend
 '(font-lock-doc-face ((t (:inherit variable-pitch))))
 '(jabber-activity-face ((t (:foreground "#edd400" :weight bold))))
 '(jabber-activity-personal-face ((t (:foreground "#8ae234" :weight bold))))
 '(jabber-chat-prompt-foreign ((t (:foreground "#204a87" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "#75507b" :weight bold))))
 '(jabber-chat-prompt-system ((t (:foreground "#4e9a06" :weight bold))))
 '(jabber-title-large ((t (:inherit variable-pitch :weight bold :height 2.0 :width ultra-expanded))))
 '(jabber-title-medium ((t (:inherit variable-pitch :weight bold :height 1.6 :width expanded))))
 '(linum ((t (:inherit (shadow variable-pitch) :weight light))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-background ((t (:inherit fixed-pitch))))
 '(org-checkbox ((t (:inherit (bold fixed-pitch)))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:weight bold :height 1.4))))
 '(org-level-1 ((t (:height 1.3))))
 '(org-level-2 ((t (:height 1.2))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(sh-heredoc ((t (:foreground "#8f5902"))))
 '(show-paren-match ((t (:background "#fce94f" :foreground "#000000"))))
 '(default ((t (:family "DejaVu Sans")))))

(provide-theme 'svend)

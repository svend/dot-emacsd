(deftheme svend
  "Created 2015-03-11.")

(custom-theme-set-faces
 'svend
 `(cursor ((t (:background ,(face-foreground 'default)))))
 `(default ((t (:height ,(if (eq window-system 'ns) 140 110)))))
 '(diff-added ((t (:inherit fixed-pitch))))
 '(diff-context ((t (:inherit (shadow fixed-pitch)))))
 '(diff-hunk-header ((t (:inherit fixed-pitch))))
 '(diff-removed ((t (:inherit fixed-pitch))))
 '(font-lock-doc-face ((t (:inherit variable-pitch))))
 `(fringe ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow)))))
 `(line-number ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow) :weight light :inhe
                                `(linum ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow) :weight light :inherit (fixed-pitch shadow default)))))rit (fixed-pitch shadow default)))))
 ;; ;; Default mode line foreground and background
 ;; '(mode-line ((t (:background "grey75" :foreground "black"))))
 ;; '(mode-line-inactive ((t (:background "grey90" :foreground "grey20" :box (:line-width -1 :color "grey75" :style nil)))))
 '(markdown-pre-face ((t (:inherit fixed-pitch))))
 '(nobreak-space ((t (:underline nil))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-background ((t (:inherit fixed-pitch))))
 '(org-checkbox ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit fixed-pitch))))
 '(org-date ((t (:inherit fixed-pitch))))
 '(org-document-title ((t (:weight bold :height 1.4))))
 '(org-ellipsis ((t (:underline nil))))
 '(org-level-1 ((t (:height 1.3))))
 '(org-level-2 ((t (:height 1.2))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit fixed-pitch))))
 '(sh-heredoc ((t (:inherit font-lock-string-face)))))

(provide-theme 'svend)
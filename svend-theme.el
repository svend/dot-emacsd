(deftheme svend
  "Created 2015-03-11.")

(custom-theme-set-faces
 'svend
 '(default ((t (:family "DejaVu Sans"))))
 '(diff-added ((t (:inherit fixed-pitch))))
 '(diff-context ((t (:inherit (shadow fixed-pitch)))))
 '(diff-hunk-header ((t (:inherit fixed-pitch))))
 '(diff-removed ((t (:inherit fixed-pitch))))
 '(fixed-pitch ((t (:family "DejaVu Sans Mono"))))
 '(font-lock-doc-face ((t (:inherit variable-pitch))))
 '(linum ((t (:inherit (shadow variable-pitch) :weight light))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-background ((t (:inherit fixed-pitch))))
 '(org-checkbox ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit fixed-pitch))))
 '(org-document-title ((t (:weight bold :height 1.4))))
 '(org-level-1 ((t (:height 1.3))))
 '(org-level-2 ((t (:height 1.2))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit fixed-pitch))))
 '(variable-pitch ((t (:family "DejaVu Sans")))))

(provide-theme 'svend)

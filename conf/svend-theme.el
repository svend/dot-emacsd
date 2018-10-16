(deftheme svend
  "Created 2015-03-11.")

(custom-theme-set-faces
 'svend
 `(cursor ((t (:background ,(face-foreground 'default)))))
 `(default ((t (:height ,(if (eq window-system 'ns) 140 110)))))
 '(diff-context ((t (:inherit (shadow)))))
 `(flyspell-incorrect ((t (:background ,(face-background 'default)))))
 '(font-lock-doc-face ((t (:inherit variable-pitch))))
 `(fringe ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow)))))
 `(line-number ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow) :weight light :inherit (shadow default)))))
 `(linum ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow) :weight light :inherit (shadow default)))))
 '(nobreak-space ((t (:underline nil))))
 '(org-document-title ((t (:weight bold :height 1.4))))
 '(org-ellipsis ((t (:underline nil))))
 '(org-level-1 ((t (:height 1.3))))
 '(org-level-2 ((t (:height 1.2))))
 '(org-level-3 ((t (:height 1.1))))
 '(sh-heredoc ((t (:inherit font-lock-string-face)))))

(provide-theme 'svend)

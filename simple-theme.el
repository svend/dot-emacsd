(deftheme simple
  "Created 2015-03-10.")

(custom-theme-set-faces
 'simple
 `(flycheck-fringe-error ((t (:background ,(face-background 'error) :foreground ,(face-foreground 'error)))))
 `(flycheck-fringe-warning ((t (:background ,(face-background 'warning) :foreground ,(face-foreground 'warning)))))
 `(cursor ((t (:background ,(face-foreground 'default)))))
 `(fringe ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow)))))
 `(linum ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow) :weight light :family "Sans Serif")))))

(provide-theme 'simple)

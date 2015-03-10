(deftheme simple
  "Created 2015-03-10.")

(custom-theme-set-faces
 'simple
 `(fringe ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow)))))
 `(linum ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow) :weight light :family "Sans Serif")))))

(provide-theme 'simple)

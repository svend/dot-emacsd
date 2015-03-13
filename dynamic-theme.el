(deftheme dynamic
  "Created 2015-03-10.")

(custom-theme-set-faces
 'dynamic
 `(cursor ((t (:background ,(face-foreground 'default)))))
 `(deault ((t (:height (if (eq window-system 'ns) 130 100)))))
 `(flycheck-fringe-error ((t (:background ,(face-background 'error) :foreground ,(face-foreground 'error)))))
 `(flycheck-fringe-info ((t (:background ,(face-background 'success) :foreground ,(face-foreground 'success)))))
 `(flycheck-fringe-warning ((t (:background ,(face-background 'warning) :foreground ,(face-foreground 'warning)))))
 `(fringe ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow)))))
 `(linum ((t (:background ,(face-background 'default) :foreground ,(face-foreground 'shadow))))))

(load-theme 'svend t)
(provide-theme 'dynamic)

(setq projectile-known-projects-file "~/.cache/emacs/projectile-bookmarks.eld")
(projectile-load-known-projects)

;; Use my default (helm) instead of projectile default (ido)
(setq projectile-completion-system 'default)
;; Use helm instead of projectile-find-file
;;(setq projectile-switch-project-action 'helm-projectile)

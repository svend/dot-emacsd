(setq projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" emacs-cache-dir))
(projectile-load-known-projects)

;; ;; Use my default (helm) instead of projectile default (ido)
;; (setq projectile-completion-system 'default)
(setq projectile-switch-project-action 'projectile-vc-dir)
(setq projectile-use-git-grep t)

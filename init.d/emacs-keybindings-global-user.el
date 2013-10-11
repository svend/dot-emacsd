;; User-reserved key bindings
;;
;; C-c letter and <F5> through <F9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html
;;
;; Press "C-c C-h" to list all of these.

(global-set-key (kbd "C-c a")   'align-current)
(global-set-key (kbd "C-c b")   'bbdb)
(global-set-key (kbd "C-c d")   'my-insert-date)
(global-set-key (kbd "C-c e")   'eww)
(global-set-key (kbd "C-c f")   'flycheck-mode)
(global-set-key (kbd "C-c h f") 'helm-firefox-bookmarks)
(global-set-key (kbd "C-c h f") 'helm-find-files)
(global-set-key (kbd "C-c h g") 'helm-git-grep-from-here)
(global-set-key (kbd "C-c h p") 'helm-projectile)
(global-set-key (kbd "C-c h x") 'helm-M-x)
(global-set-key (kbd "C-c k")   'kill-this-buffer)
(global-set-key (kbd "C-c m")   'magit-status)
(global-set-key (kbd "C-c n")   'linum-mode)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o b") 'org-iswitchb)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o l") 'org-store-link)
(global-set-key (kbd "C-c o r") 'org-remember)
(global-set-key (kbd "C-c r")   'revert-buffer)
(global-set-key (kbd "C-c s")   'toggle-truncate-lines)
(global-set-key (kbd "C-c t")   'my-switch-to-term)
(global-set-key (kbd "C-c w")   'whitespace-mode)

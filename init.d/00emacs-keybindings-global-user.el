;; User-reserved key bindings
;;
;; C-c letter and <F5> through <F-9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html
;;
;; Press "C-c C-h" to list all of these.

(global-set-key (kbd "C-c a")	'align-current)
(global-set-key (kbd "C-c b")	'bbdb)
(global-set-key (kbd "C-c c")	'my-clear-kill-ring)
(global-set-key (kbd "C-c d")   'my-insert-date)
(global-set-key (kbd "C-c f")	'ido-recentf-open)
(global-set-key (kbd "C-c i")	'imenu)
(global-set-key (kbd "C-c k")	'kill-this-buffer)
(global-set-key (kbd "C-c l")	'linum-mode)
(global-set-key (kbd "C-c n")	'next-buffer)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o b") 'org-iswitchb)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o l") 'org-store-link)
(global-set-key (kbd "C-c p")	'previous-buffer)
(global-set-key (kbd "C-c r")	'org-remember)
(global-set-key (kbd "C-c s")	'follow-delete-other-windows-and-split)
(global-set-key (kbd "C-c t")	'my-switch-to-term)
(global-set-key (kbd "C-c w")	'toggle-truncate-lines)
(global-set-key (kbd "C-c x")	'nxhtml-menu-mode)

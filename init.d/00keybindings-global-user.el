;; User-reserved keybindings 
;;
;; C-c letter and <F5> through <F-9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html
;;
;; Press "C-c C-h" to list all of these.

(global-set-key (kbd "C-c c") 'my-clear-kill-ring)
(global-set-key (kbd "C-c f") 'follow-delete-other-windows-and-split)
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c l") 'linum-mode)
(global-set-key (kbd "C-c w") 'toggle-truncate-lines)
(global-set-key (kbd "C-c t") 'my-term)

;; TODO: Temporary key to reload solarized theme. Remove when I have
;; found out why theme colors are wrong with emacsclient.
(global-set-key (kbd "C-c z") 'color-theme-solarized-light)

;; Cycle through buffers
(global-set-key (kbd "C-c n") 'next-buffer)
(global-set-key (kbd "C-c p") 'previous-buffer)
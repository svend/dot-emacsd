;; Add some convenient window mangement bindings
;;
;; Cycle through windows
(global-set-key (kbd "C-`") 'other-window)
;; Make C-n act like C-x n
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-vertically)
(global-set-key (kbd "C-3") 'split-window-horizontally)
(global-set-key (kbd "C-4") 'ctl-x-4-prefix)
(global-set-key (kbd "C-5") 'ctl-x-5-prefix)
(global-set-key (kbd "C-0") 'delete-window)

;; User keybindings (C-c letter)
;;
;; Press "C-c C-h" to list all of these.

(global-set-key (kbd "C-c c") 'my-clear-kill-ring)
(global-set-key (kbd "C-c f") 'follow-delete-other-windows-and-split)
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c l") 'linum-mode)
(global-set-key (kbd "C-c w") 'toggle-truncate-lines)
(global-set-key (kbd "C-c t") 'ansi-term)

;; Cycle through buffers
(global-set-key (kbd "C-c n") 'next-buffer)
(global-set-key (kbd "C-c p") 'previous-buffer)

;; Add some convenient window mangement bindings
;; Make C-tab act like C-x o
(global-set-key (kbd "C-<tab>") 'other-window)
;; Make C-n act like C-x n
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-vertically)
(global-set-key (kbd "C-3") 'split-window-horizontally)
(global-set-key (kbd "C-4") 'ctl-x-4-prefix)
(global-set-key (kbd "C-5") 'ctl-x-5-prefix)
(global-set-key (kbd "C-0") 'delete-window)

;; User keybindings (C-c letter)
(global-set-key (kbd "C-c k") 'my-clear-kill-ring)

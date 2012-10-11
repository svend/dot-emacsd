;; Non-user reserved keybindings
;;
;; These may conflict or get overridden by modes.
;;
;; C-c letter and <F5> through <F-9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html

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

;; Resize font using the mouse scroll wheel
(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)

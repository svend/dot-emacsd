;; Non-user reserved keybindings
;;
;; These may conflict or get overridden by modes.
;;
;; C-c letter and <F5> through <F-9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html

;; Add some convenient window mangement bindings

;; Cycle through windows
(global-set-key (kbd "C-`") 'other-window)

;; Resize font

(global-set-key (kbd "C-0") 'global-text-scale-disable)
(global-set-key (kbd "C--") 'global-text-scale-decrease)
(global-set-key (kbd "C-=") 'global-text-scale-increase)

(global-set-key (kbd "<C-mouse-4>") 'global-text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'global-text-scale-decrease)

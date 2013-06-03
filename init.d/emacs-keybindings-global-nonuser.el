;; Non-user reserved keybindings
;;
;; These may conflict or get overridden by modes.
;;
;; C-c letter and <F5> through <F-9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html

(global-set-key (kbd "<C-mouse-4>") 'global-text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'global-text-scale-decrease)
(global-set-key (kbd "C--") 'er/contract-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-x 7") 'my-rotate-windows)
(global-set-key (kbd "C-`") 'helm-for-files)

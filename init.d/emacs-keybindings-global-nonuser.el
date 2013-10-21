;; Non-user reserved keybindings
;;
;; These may conflict or get overridden by modes.
;;
;; C-c letter and <F5> through <F-9> are reserved for user use.
;;
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html

(global-set-key (kbd "<C-mouse-4>")	'global-text-scale-increase)
(global-set-key (kbd "<C-mouse-5>")	'global-text-scale-decrease)
; expand-region
(global-set-key (kbd "C--")		'er/contract-region)
(global-set-key (kbd "C-=")		'er/expand-region)
(global-set-key (kbd "C-`")		'helm-for-files)
; buffer-move
(global-set-key (kbd "<C-S-up>")	'buf-move-up)
(global-set-key (kbd "<C-S-down>")	'buf-move-down)
(global-set-key (kbd "<C-S-left>")	'buf-move-left)
(global-set-key (kbd "<C-S-right>")	'buf-move-right)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

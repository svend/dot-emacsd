(defun my-setup-term-mode ()
  "My preferences for term mode"
  (interactive)
  ;; Settings recommended in term.el
  ;;
  ;; http://git.savannah.gnu.org/cgit/emacs.git/tree/lisp/term.el?id=c720ef1329232c76d14a0c39daa00e37279aa818#n179
  (make-local-variable 'transient-mark-mode)
  (make-local-variable 'mouse-yank-at-point)
  (setq transient-mark-mode nil)
  (setq mouse-yank-at-point t)

  ;; Disable hl-line-mode in term buffers
  (make-local-variable 'global-hl-line-mode)
  (setq global-hl-line-mode nil)

  ;; Copy on select with mouse
  (make-local-variable 'mouse-drag-copy-region)
  (setq mouse-drag-copy-region t)

  ;; Make term mode more term-like

  (define-key term-raw-map (kbd "<C-backspace>") 'term-send-raw)
  (define-key term-raw-map (kbd "<C-S-backspace>") 'term-send-raw)

  ;; Toogle between line and char mode in term-mode
  (define-key term-raw-map (kbd "C-'") 'term-line-mode)
  (define-key term-mode-map (kbd "C-'") 'term-char-mode)

  ;; Enable Emacs M-x keybinding in terminal
  (define-key term-raw-map (kbd "M-x") 'execute-extended-command)

  ;; Paste keybinding for keyboards with no insert
  (define-key term-raw-map (kbd "C-S-v") 'term-paste)

(add-hook 'term-mode-hook 'my-setup-term-mode)

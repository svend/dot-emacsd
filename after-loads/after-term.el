(defun my-setup-term-mode ()
  "My preferences for term mode"
  (interactive)
  ;; Disable transient mark mode
  ;;
  ;; This is advised in the term.el source. See
  ;; http://git.savannah.gnu.org/cgit/emacs.git/tree/lisp/term.el?id=c720ef1329232c76d14a0c39daa00e37279aa818#n179
  (make-local-variable 'transient-mark-mode)
  (setq transient-mark-mode nil)

  ;; Disable hl-line-mode in term buffers
  (make-local-variable 'global-hl-line-mode)
  (setq global-hl-line-mode nil)

  ;; Make term mode more term-like

  (define-key term-raw-map (kbd "<C-backspace>") 'term-send-raw)
  (define-key term-raw-map (kbd "<C-S-backspace>") 'term-send-raw)

  ;; Send ESC to the terminal
  ;;
  ;; TODO: Sending ESC raw causes M-. to be processed by emacs
  ;; (define-key term-raw-map "\e" 'term-send-raw)

  ;; Toogle between line and char mode in term-mode
  (define-key term-raw-map (kbd "C-'") 'term-line-mode)
  (define-key term-mode-map (kbd "C-'") 'term-char-mode)

  ;; Enable Emacs M-x keybinding in terminal
  (define-key term-raw-map (kbd "M-x") 'execute-extended-command)

  ;; Copy on select with mouse
  (make-local-variable 'mouse-drag-copy-region)
  (setq mouse-drag-copy-region t)

  ;; Paste keybinding for keyboards with no insert
  (define-key term-raw-map (kbd "C-S-v") 'term-paste)

  ;; Projectile mode map (C-c p) breaks C-c in terminal
  (setq minor-mode-overriding-map-alist '(
					  (projectile-mode . nil)
					  (erc-track-minor-mode . nil)
					  )))

(add-hook 'term-mode-hook 'my-setup-term-mode)

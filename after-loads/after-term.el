(defun my-setup-term-mode ()
  "My preferences for term mode"
  (interactive)
  ;; Settings recommended in term.el
  ;;
  ;; http://git.savannah.gnu.org/cgit/emacs.git/tree/lisp/term.el?id=c720ef1329232c76d14a0c39daa00e37279aa818#n179
  (make-local-variable 'mouse-yank-at-point)
  (setq mouse-yank-at-point t)
  ;; End of recommended settings

  ;; Disable hl-line-mode in term buffers
  (make-local-variable 'global-hl-line-mode)
  (setq global-hl-line-mode nil)

  ;; Make term mode more term-like

  (define-key term-raw-map (kbd "<C-backspace>") 'term-send-raw)
  (define-key term-raw-map (kbd "<C-S-backspace>") 'term-send-raw)

  ;; Toogle between line and char mode in term-mode
  (define-key term-raw-map (kbd "C-'") 'term-line-mode)
  (define-key term-mode-map (kbd "C-'") 'term-char-mode)

  ;; Enable Emacs key bindings in term mode
  (define-key term-raw-map (kbd "M-!") nil)
  (define-key term-raw-map (kbd "M-&") nil)
  (define-key term-raw-map (kbd "M-:") nil)
  (define-key term-raw-map (kbd "M-x") nil)

  ;; Paste key bindings for Mac keyboards with no insert
  (define-key term-raw-map (kbd "C-c y") 'term-paste)
  (define-key term-raw-map (kbd "s-v") 'term-paste)

  ;; Enable address links in term mode
  (goto-address-mode))

(add-hook 'term-mode-hook 'my-setup-term-mode)

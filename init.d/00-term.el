(add-hook 'term-mode-hook
	  '(lambda ()
	     ;; Disable transient mark mode
	     ;;
	     ;; This is advised in the term.el source. See
	     ;; http://bzr.savannah.gnu.org/lh/emacs/emacs-23/annotate/head:/lisp/term.el
	     (make-local-variable 'transient-mark-mode)
	     (setq transient-mark-mode nil)

	     ;; Disable hl-line-mode in term buffers
	     (make-local-variable 'global-hl-line-mode)
	     (setq global-hl-line-mode nil)

	     ;; Disable line wrapping
	     (setq truncate-lines t)

	     ;; Make term mode more term-like

	     ;; Send ESC to the terminal
	     ;;
	     ;; TODO: Sending ESC raw causes M-. to be processed by emacs
	     ;; (define-key term-raw-map "\e" 'term-send-raw)

	     ;; Send C-c to the terminal
	     (define-key term-raw-map (kbd "C-c") 'term-send-raw)

	     ;; Allow pasting in term mode
	     ;;
	     ;; TODO: Disabled. This conflicts with readline C-y,
	     ;; which is useful.
	     ;; (define-key term-raw-map (kbd "C-y") 'term-paste)

	     ;; Toogle between line and char mode in term-mode
	     (define-key term-raw-map  (kbd "C-'") 'term-line-mode)
	     (define-key term-mode-map (kbd "C-'") 'term-char-mode)

	     ;; Use configured color theme
	     (setq term-default-bg-color (frame-parameter nil 'background-color))
	     (setq term-default-fg-color (frame-parameter nil 'foreground-color))))

(add-hook 'term-mode-hook
	  '(lambda ()
	     ;; Disable transient mark mode
	     ;;
	     ;; This is advised in the term.el source. See
	     ;; http://bzr.savannah.gnu.org/lh/emacs/emacs-23/annotate/head:/lisp/term.el
	     (make-local-variable 'transient-mark-mode)
	     (setq transient-mark-mode nil)

	     ;; Make term mode more term-like

	     ;; Send ESC to the terminal
	     ;; TODO: Sending ESC raw causes M-. to be processed by emacs
	     ;; (define-key term-raw-map "\e" 'term-send-raw)

	     ;; Send C-c to the terminal
	     (define-key term-raw-map "\C-c" 'term-send-raw)

	     ;; Make the terminal forground and background colors
	     ;; match the other windows
	     ;;
	     ;; This is needed when loading a color-theme.
	     (setq term-default-bg-color (frame-parameter nil 'background-color))
	     (setq term-default-fg-color (frame-parameter nil 'foreground-color))

	     ;; Disable hl-line-mode in term buffers
	     (set (make-local-variable 'global-hl-line-mode) nil)))

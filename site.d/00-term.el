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
	     (define-key term-raw-map "\C-c" 'term-send-raw)))

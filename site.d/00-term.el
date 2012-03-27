(add-hook 'term-mode-hook
	  '(lambda ()
	     ;; Make term mode more term-like
	     ;;
	     ;; Send ESC and C-c directly to the terminal.
	     ;; TODO: Sending ESC raw causes M-. to be processed by emacs
	     ;;(define-key term-raw-map "\e" 'term-send-raw)
	     (define-key term-raw-map "\C-c" 'term-send-raw)))

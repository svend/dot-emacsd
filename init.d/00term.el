(eval-after-load 'term
  '(progn
     (add-hook 'term-mode-hook
	       '(lambda ()
		  ;; Disable transient mark mode
		  ;;
		  ;; This is advised in the term.el source. See
		  ;; http://git.savannah.gnu.org/cgit/emacs.git/tree/lisp/term.el?id=c720ef1329232c76d14a0c39daa00e37279aa818#n179
		  (make-local-variable 'transient-mark-mode)
		  (setq transient-mark-mode nil)

		  ;; Disable hl-line-mode in term buffers
		  (make-local-variable 'global-hl-line-mode)
		  (setq global-hl-line-mode nil)

		  ;; Disable line wrapping
		  (setq truncate-lines t)

		  ;; Make term mode more term-like

		  ;; Set term-escape to C-q (default is C-c)
		  ;;
		  ;; Use this escape to send the next keypress directly to
		  ;; the terminal.
		  ;;
		  ;; TODO: This is supposed to set the existing
		  ;; term-escape-char to term-send-raw, but from the
		  ;; term.el code, it doesn't look like term-escape-char is
		  ;; ever set.
		  ;;
		  ;; http://git.savannah.gnu.org/cgit/emacs.git/tree/lisp/term.el?id=c720ef1329232c76d14a0c39daa00e37279aa818#n879
		  (term-set-escape-char ?\C-q)

		  ;; Send C-c to the terminal
		  (define-key term-raw-map (kbd "C-c") 'term-send-raw)

		  ;; Send ESC to the terminal
		  ;;
		  ;; TODO: Sending ESC raw causes M-. to be processed by emacs
		  ;; (define-key term-raw-map "\e" 'term-send-raw)

		  ;; Toogle between line and char mode in term-mode
		  (define-key term-raw-map (kbd "C-'") 'term-line-mode)
		  (define-key term-mode-map (kbd "C-'") 'term-char-mode)

		  ;; Use configured color theme
		  (setq term-default-bg-color (frame-parameter nil 'background-color))
		  (setq term-default-fg-color (frame-parameter nil 'foreground-color))))))

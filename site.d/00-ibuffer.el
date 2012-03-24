;; Run ibuffer instead of buffer
(defalias 'list-buffers 'ibuffer)

(eval-after-load "ibuffer"
  '(progn
     (setq ibuffer-saved-filter-groups
	   '(("default"
	      ("emacs-config" (or
			(filename . "/\.emacs$")
			(filename . "/\.emacs\.d/")))
	      ("irc" (mode . erc-mode))
	      ("mail" (or
		       (mode . message-mode)
		       (mode . notmuch-hello-mode)
		       (mode . notmuch-search-mode)
		       (mode . notmuch-show-mode)))
	      ("term" (mode . term-mode))
	      )))

     ;; Hide empty groups
     (setq ibuffer-show-empty-filter-groups nil)

     (add-hook 'ibuffer-mode-hook
	       (lambda ()
		 (ibuffer-switch-to-saved-filter-groups "default")))
     ))

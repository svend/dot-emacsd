;; Run ibuffer instead of standard list-buffers
(defalias 'list-buffers 'ibuffer)

(eval-after-load "ibuffer"
  '(progn

     ;; Define ibuffer groups
     (setq ibuffer-saved-filter-groups
	   '(("default"
	      ("emacs-config" (or
			(filename . "/\.emacs$")
			(filename . "/\.emacs\.d/")
			(filename . "/\.gnus.el$")))
	      ("irc" (mode . erc-mode))
	      ("mail" (or
		       (mode . message-mode)
		       (mode . gnus-article-mode)
		       (mode . gnus-browse-mode)
		       (mode . gnus-group-mode)
		       (mode . gnus-server-mode)
		       (mode . gnus-summary-mode)
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

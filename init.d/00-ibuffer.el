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
		       (mode . notmuch-show-mode)
		       (name . "\*[Nn]otmuch")))
	      ("magit" (name . "\*magit"))
	      ("puppet" (or
			 (mode . puppet-mode)
			 (filename . "src/[^/]*/puppet/")))
	      ("term" (mode . term-mode))
	      ("tramp" (name . "\*tramp"))
	      )))

     ;; Hide empty groups
     (setq ibuffer-show-empty-filter-groups nil)

     (add-hook 'ibuffer-mode-hook
	       (lambda ()
		 (ibuffer-switch-to-saved-filter-groups "default")))

     ;; Filter dired along with files
     ;;
     ;; Filename filtering doesn't match dired buffers by default.
     ;;
     ;; See http://www.emacswiki.org/emacs/IbufferMode#toc10
     (eval-after-load "ibuf-ext"
       '(define-ibuffer-filter filename
	    "Toggle current view to buffers with file or directory name matching QUALIFIER."
	  (:description "filename"
			:reader (read-from-minibuffer "Filter by file/directory name (regexp): "))
	  (ibuffer-awhen (or (buffer-local-value 'buffer-file-name buf)
			     (buffer-local-value 'dired-directory buf))
	    (string-match qualifier it))))
     ))

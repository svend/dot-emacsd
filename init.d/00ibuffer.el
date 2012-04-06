;; Run ibuffer instead of standard list-buffers
(defalias 'list-buffers 'ibuffer)

(eval-after-load 'ibuffer
  '(progn
     ;; Define ibuffer groups
     (setq ibuffer-saved-filter-groups
	   '(("default"
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
	      ("root" (filename . "^/su\\(do\\)?:"))
	      ("remote" (filename . "^/[^/]+:/"))
	      ("tramp" (name . "\*tramp"))
	      )))

     ;; Hide empty groups
     (setq ibuffer-show-empty-filter-groups nil)

     (defun ibuffer-vc-add-vc-filter-groups ()
       (interactive)
       (dolist (group (ibuffer-vc-generate-filter-groups-by-vc-root))
	 (add-to-list 'ibuffer-filter-groups group t)))

     (add-hook 'ibuffer-hook
	       (lambda ()
		 (ibuffer-switch-to-saved-filter-groups "default")
		 ;; Add ibuffer-vc filter groups and update list
		 (ibuffer-vc-add-vc-filter-groups)
		 (ibuffer-update nil t)))))

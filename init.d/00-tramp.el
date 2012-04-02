(eval-after-load "tramp"
  '(progn
     ;; Set default connection method to scpc (scp with ControlMaster)
     ;;
     ;; TODO: What is the best method (scpc, scp, ssh)?
     ;;
     ;; "External transfer methods are normally preferable to inline
     ;; transfer methods, giving better performance." (ssh is inline,
     ;; scp and scpc is external.)
     ;;
     ;; http://www.xemacs.org/Documentation/packages/html/tramp_4.html#SEC10
     ;;
     ;; "My suggestion is to use an inline method. For large files,
     ;; out-of-band methods might be more efficient, but I guess that
     ;; most people will want to edit mostly small files.
     ;;
     ;; I guess that these days, most people can access a remote
     ;; machine by using ssh. So I suggest that you use the `ssh'
     ;; method."
     ;;
     ;; http://www.xemacs.org/Documentation/packages/html/tramp_4.html#SEC11
     ;;
     (setq tramp-default-method "scpc")

     ;; Edit remote files via sudo
     ;;
     ;; Enable editing of remote files as root using sudo using the
     ;; address /sudo:host.example.org:.
     ;;
     ;; http://www.gnu.org/software/tramp/#Multi_002dhops
     (add-to-list 'tramp-default-proxies-alist
                  '(nil "\\`root\\'" "/ssh:%h:"))
     (add-to-list 'tramp-default-proxies-alist
                  '((regexp-quote (system-name)) nil nil))

     ;; Use warning font in modeline when working as root
     ;;
     ;; http://www.gnu.org/software/emacs/manual/html_mono/tramp.html#Frequently-Asked-Questions
     ;; (I'ld like to get a Visual Warning when working in a sudo:ed
     ;; context)
     (defun my-mode-line-warn-when-root ()
       (when (string-match "^/su\\(do\\)?:" default-directory)
	 (setq mode-line-format
	       (format-mode-line mode-line-format 'font-lock-warning-face))))
     (add-hook 'find-file-hooks 'my-mode-line-warn-when-root)
     (add-hook 'dired-mode-hook 'my-mode-line-warn-when-root)
     ))

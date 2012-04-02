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
     ))

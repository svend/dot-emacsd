(eval-after-load "tramp"
  '(progn

     ;; Edit remote files via sudo
     ;; http://www.gnu.org/software/tramp/#Multi_002dhops
    (add-to-list 'tramp-default-proxies-alist
		  '((nil "\\`root\\'" "/ssh:%h:")))
    (add-to-list 'tramp-default-proxies-alist
		  '((regexp-quote (system-name)) nil nil))

     ))

(eval-after-load "tramp"
  '(progn
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

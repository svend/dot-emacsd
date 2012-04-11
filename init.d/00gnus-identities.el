(eval-after-load 'gnus-identities
  '(progn
     ;; gnus-msg must be loaded for gnus-identites
     (require 'gnus-msg)

     ;; Read gnus config file; gnus may not have loaded
     (load-file "~/.emacs.d/gnus.el")))

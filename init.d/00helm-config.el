(eval-after-load 'helm-config
  '(progn
     (require 'helm-ls-git)
     (add-to-list 'helm-for-files-preferred-list 'helm-c-source-ls-git t)
     (delete 'helm-c-source-locate helm-for-files-preferred-list)))

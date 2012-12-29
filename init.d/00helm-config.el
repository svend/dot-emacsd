(eval-after-load 'helm-files
  '(progn
     (require 'helm-ls-git)
     (add-to-list 'helm-for-files-preferred-list 'helm-c-source-ls-git t)))


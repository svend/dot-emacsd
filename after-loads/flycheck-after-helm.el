(require 'helm-ls-git)
(add-to-list 'helm-for-files-preferred-list 'helm-source-ls-git t)
(delete 'helm-source-locate helm-for-files-preferred-list)
(helm-attrset 'follow 1 helm-source-buffers-list)
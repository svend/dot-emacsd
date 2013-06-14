;; fix the PATH variable
(when (eq window-system 'ns)
  (exec-path-from-shell-initialize)
  (add-to-list 'default-frame-alist
	       '(font . "Menlo-14")))

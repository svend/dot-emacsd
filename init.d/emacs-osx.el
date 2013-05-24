;; fix the PATH variable
(when (eq window-system 'ns)
  (exec-path-from-shell-initialize))

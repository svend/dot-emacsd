;; fix the PATH variable
(when (eq window-system 'ns)
  (exec-path-from-shell-initialize)
  (set-face-attribute 'default nil :font "Menlo-14"))

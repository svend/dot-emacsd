(when (eq window-system 'ns)
  ;; fix the PATH variable
  (exec-path-from-shell-initialize)
  (set-face-attribute 'default nil :font "Source Code Pro" :height 140))

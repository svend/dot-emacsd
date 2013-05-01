(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control)

  ;; fix the PATH variable
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))
  )

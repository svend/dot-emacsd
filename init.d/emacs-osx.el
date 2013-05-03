(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control)

  ;; fix the PATH variable
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)
    (exec-path-from-shell-copy-env "ALTERNATE_EDITOR")
    (exec-path-from-shell-copy-env "EDITOR")
    (exec-path-from-shell-copy-env "GPG_AGENT_INFO")
    (exec-path-from-shell-copy-env "SSH_AUTH_SOCK"))
  )

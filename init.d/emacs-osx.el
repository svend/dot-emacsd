;; Set Mac keyboard
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control))

;; fix the PATH variable
(when (eq window-system 'ns)
  (exec-path-from-shell-initialize))

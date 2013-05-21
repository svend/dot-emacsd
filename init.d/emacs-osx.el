;; Set Mac keyboard
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'control)
  (setq mac-option-modifier 'meta))

;; fix the PATH variable
(when (eq window-system 'ns)
  (exec-path-from-shell-initialize))

;; Set Mac keyboard
(when (eq system-type 'darwin)
  (setq ns-command-modifier 'control)
  ;; This is the default
  ;; (setq ns-alternate-modifier 'meta)
  )

;; fix the PATH variable
(when (eq window-system 'ns)
  (exec-path-from-shell-initialize))

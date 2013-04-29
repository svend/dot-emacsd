(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control)

  ;; fix the PATH variable
  (defun set-exec-path-from-shell-PATH ()
    (let ((path-from-shell (shell-command-to-string "$SHELL -l -i -c 'echo $PATH'")))
      (setenv "PATH" path-from-shell)
      (setq exec-path (split-string path-from-shell path-separator))))

  (if window-system (set-exec-path-from-shell-PATH))
  )

(defun my-setup-sh-mode ()
  "My preferences for sh-mode"
  (interactive)
  (setq sh-basic-offset 8)
  (setq sh-indentation 8)
  (setq sh-indent-for-case-alt '+)
  (setq sh-indent-for-case-label 0))

(add-hook 'sh-mode-hook 'my-setup-sh-mode)

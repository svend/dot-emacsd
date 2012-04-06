(defun my-clear-kill-ring ()
  "Clear the kill ring"
  (interactive)
  (setq kill-ring nil)
  (message "Cleared the kill ring"))

(defun my-clear-kill-ring ()
  "Clear the kill ring"
  (interactive)
  (setq kill-ring nil)
  (message "Cleared the kill ring"))

(defun my-switch-to-term ()
  "Switch to term running in the default-directory,
otherwise start a new ansi-term"
  (interactive)
  (let (found-buffer
	(directory (expand-file-name default-directory))
	(buffers (buffer-list)))
    (while buffers
      (with-current-buffer (car buffers)
	(when (and (string= major-mode "term-mode") (string= default-directory directory))
	  (setq found-buffer (car buffers))
	  ;; Stop looking
	  (setq buffers nil))
	(setq buffers (cdr buffers))))
    ;; If we found a term, switch to it, otherwise start a term
    (if found-buffer
	(switch-to-buffer found-buffer)
      (ansi-term "bash"))))

(defun my-clear-kill-ring ()
  "Clear the kill ring"
  (interactive)
  (setq kill-ring nil)
  (message "Cleared the kill ring"))

(defun my-insert-date ()
  "Insert date string"
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S"))
  )

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

(defun my-rotate-windows ()
  (interactive)
  (let* ((windows (window-list))
         (buffers (mapcar 'window-buffer windows))
         (windows (nconc (cdr windows) (list (car windows)))))
    (mapcar* (lambda (w b) (set-window-buffer w b))
             windows buffers)))

;; From http://www.emacswiki.org/emacs/GlobalTextScaleMode

(define-globalized-minor-mode
  global-text-scale-mode
  text-scale-mode
  (lambda () (text-scale-mode 1)))

(defun global-text-scale-adjust (inc) (interactive)
  (text-scale-set 1)
  (kill-local-variable 'text-scale-mode-amount)
  (setq-default text-scale-mode-amount (+ text-scale-mode-amount inc))
  (global-text-scale-mode 1))

(defun global-text-scale-disable () (interactive)
  (global-text-scale-adjust (- text-scale-mode-amount))
  (global-text-scale-mode -1))

(defun global-text-scale-decrease () (interactive)
  (global-text-scale-adjust -1))

(defun global-text-scale-increase () (interactive)
  (global-text-scale-adjust 1))

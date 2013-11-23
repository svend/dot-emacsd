;; Put tramp history file under ~/.cache
(setq tramp-persistency-file-name (expand-file-name "tramp" emacs-cache-dir))

;; Edit remote files via sudo
;;
;; See
;; http://www.gnu.org/software/emacs/manual/html_node/tramp/Ad_002dhoc-multi_002dhops.html
;;
;; /ssh:example.com|sudo:localhost:/file

;; Use warning font in modeline when working as root
;;
;; http://www.gnu.org/software/emacs/manual/html_mono/tramp.html#Frequently-Asked-Questions
;; (I'ld like to get a Visual Warning when working in a sudo:ed
;; context)
;;
(defun my-mode-line-warn-when-root ()
  (when (string-match "^/su\\(do\\)?:" default-directory)
    (setq mode-line-format
	  (format-mode-line mode-line-format 'font-lock-warning-face))))
(add-hook 'find-file-hooks 'my-mode-line-warn-when-root)
(add-hook 'dired-mode-hook 'my-mode-line-warn-when-root)

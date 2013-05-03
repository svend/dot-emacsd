;; Put tramp history file under ~/.cache
(setq tramp-persistency-file-name "~/.cache/emacs/tramp")

;; Edit remote files via sudo
;;
;; Enable editing of remote files as root using sudo using the
;; address /sudo:host.example.org:.
;;
;; Note that only "inline" methods (e.g. ssh) are supported, not
;; external methods like scpc.
;;
;; http://www.gnu.org/software/tramp/#Multi_002dhops
(add-to-list 'tramp-default-proxies-alist
	     '(nil "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
	     '((regexp-quote (system-name)) nil nil))

;; Use warning font in modeline when working as root
;;
;; http://www.gnu.org/software/emacs/manual/html_mono/tramp.html#Frequently-Asked-Questions
;; (I'ld like to get a Visual Warning when working in a sudo:ed
;; context)
;;
;; TODO: Background color is wrong with color-theme-solarized.
(defun my-mode-line-warn-when-root ()
  (when (string-match "^/su\\(do\\)?:" default-directory)
    (setq mode-line-format
	  (format-mode-line mode-line-format 'font-lock-warning-face))))
(add-hook 'find-file-hooks 'my-mode-line-warn-when-root)
(add-hook 'dired-mode-hook 'my-mode-line-warn-when-root)

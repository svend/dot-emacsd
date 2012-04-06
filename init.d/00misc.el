;; Require an EOL at end of files
(setq require-final-newline t)

;; One space after sentences
(setq sentence-end-double-space nil)

;; Enable disabled commands
(put 'dired-find-alternate-file 'disabled nil)

;; Use GUI web browser if it is available
(if (executable-find "x-www-browser")
    (progn
      (setq browse-url-generic-program "x-www-browser")
      (setq browse-url-browser-function 'browse-url-generic)))

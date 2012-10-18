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

;; Make buffer names unique
(toggle-uniquify-buffer-names)

;; Start emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

;; Turn on flyspell and goto-address for all text and prog modes
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'goto-address-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'prog-mode-hook 'goto-address-prog-mode)

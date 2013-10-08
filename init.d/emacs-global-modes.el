(winner-mode 1)
(windmove-default-keybindings)
(add-hook 'after-init-hook 'global-flycheck-mode)
;; (add-hook 'after-init-hook 'ido-mode)
;; (add-hook 'after-init-hook 'ido-ubiquitous)
(add-hook 'after-init-hook 'projectile-global-mode)

;; ido-mode
(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-save-directory-list-file (expand-file-name "ido.hist" emacs-cache-dir)
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)
(ido-mode +1)
(ido-ubiquitous-mode +1)
;; smarter fuzzy matching for ido
(flx-ido-mode +1)
;; disable ido faces to see flx highlights
(setq ido-use-faces nil)

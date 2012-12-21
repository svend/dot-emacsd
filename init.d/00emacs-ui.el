;; UI settings

;; Hide welcome screen
(setq inhibit-splash-screen t)

;; Show trailing whitespace
;; This can be an annoyting default
;; (setq-default show-trailing-whitespace t)

;; Display date and time in 24 hour format
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)

;; Copy test selected by the mouse to the kill ring
;;
;; This was turned off in Emacs 24
(setq mouse-drag-copy-region t)

;; Display clock in the status bar
(display-time-mode t)

;; Display column number in mode-line
;;
;; (Line number is displayed by default.)
(column-number-mode t)

;; Hilight the current line
;;
;; TODO: How to disable this for certain modes, like term-mode?
(global-hl-line-mode t)

;; Disable tool bar
(tool-bar-mode 0)

;; Enable/disable menubar in GUI/text frames
;; http://darcsden.com/lyro/config/browse/+.emacs
(menu-bar-mode (if (window-system) t 0))
(defun my-show-x-menu-bar (&optional frame)
  (if (window-system frame)
      (menu-bar-mode t)
      (modify-frame-parameters frame '((menu-bar-lines . 1)))))
(add-hook 'after-make-frame-functions 'my-show-x-menu-bar)

;; Enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable helm-mode
(helm-mode 1)

;; Run ibuffer instead of standard list-buffers
(defalias 'list-buffers 'ibuffer)

;; Enable recent files mode
(recentf-mode t)

;; UI settings

;; Hide welcome screen
(setq inhibit-splash-screen t)

;; Display date and time in 24 hour format
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)

;; Copy test selected by the mouse to the kill ring
;;
;; This was turned off in Emacs 24
(setq mouse-drag-copy-region t)

;; Scroll one line at a time with mouse
(setq mouse-wheel-scroll-amount '(1))

;; Display clock in the status bar
(display-time-mode t)

;; Display column number in mode-line
;;
;; (Line number is displayed by default.)
(column-number-mode t)

;; Hilight the current line
;;
;; To disable for a mode, add this to the mode hook
;;
;; (make-local-variable 'global-hl-line-mode)
;; (setq global-hl-line-mode nil)
(global-hl-line-mode t)

;; Disable menu bar
(menu-bar-mode 0)

;; Disable tool bar
(tool-bar-mode 0)

;; Enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable recent files mode
(recentf-mode t)

;; UI settings

;; Hide welcome screen
(setq inhibit-splash-screen t)

;; Show trailing whitespace
;; This can be an annoyting default
;; (setq-default show-trailing-whitespace t)

;; Display date and time in 24 hour format
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)

;; Display clock in the status bar
(display-time-mode t)

;; Display line number and column number in status bar
(line-number-mode t)
(column-number-mode t)

;; Hilight the current line
(global-hl-line-mode t)

;; Disable tool bar
(tool-bar-mode 0)

;; Copy and paste using the clipboard not the primary selection
;;
;; The default behavior is to only use the primary selection
;; (hilighted text).
;;
;; These settings are the default in Emacs 24.
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary nil)

;; Do not copy text selected with the mouse to the kill ring
;;
;; These settings are the default in Emacs 24.
(setq mouse-drag-copy-region nil)

;; This setting is the default in Emacs 24.
(setq select-active-regions t)

;; Put the scroll bar on the right side
;;
;; This setting is the default in Emacs 24.
(set-scroll-bar-mode 'right)

;; Enable/disable menubar in GUI/text frames
;; http://darcsden.com/lyro/config/browse/+.emacs
(menu-bar-mode (if (window-system) t 0))
(defun my-show-x-menu-bar (&optional frame)
  (if (window-system frame)
      (modify-frame-parameters frame '((menu-bar-lines . 1)))))
(add-hook 'after-make-frame-functions 'my-show-x-menu-bar)

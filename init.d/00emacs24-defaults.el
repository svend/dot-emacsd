;; Settings that are the default in Emacs 24

;; Put the scroll bar on the right side
(set-scroll-bar-mode 'right)

;; Do not copy text selected with the mouse to the kill ring
(setq mouse-drag-copy-region nil)

(setq select-active-regions t)

;; Copy and paste using the clipboard not the primary selection
;;
;; The default behavior is to only use the primary selection
;; (hilighted text).
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary nil)

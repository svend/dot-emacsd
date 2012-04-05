;; This file must come after the color-theme autoloads

;; Initialize color theme after it loads
(eval-after-load 'color-theme
  '(progn
     (color-theme-initialize)
     ))

;; Load the solarized (light) color theme
;;
;; TODO: Getting neon colors when running emacsclient. This only
;; happens with the solarized theme. Loading the theme again fixes the
;; problem.
(color-theme-solarized-light)

;; This works:
;; (require 'color-theme)
;; (color-theme-standard)

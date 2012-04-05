;; This file must come after the color-theme autoloads

;; Initialize color theme after it loads
(eval-after-load 'color-theme
  '(progn
     (color-theme-initialize)
     ))

;; Trying the solarized (light) color theme
(color-theme-solarized-light)

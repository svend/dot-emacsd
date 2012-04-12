;; Enable ido-mode
(ido-mode t)

(eval-after-load 'ido
  '(progn
     (setq ido-enable-flex-matching t)
     (setq ido-everywhere t)))

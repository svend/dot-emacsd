(eval-after-load 'ido
  '(progn
     (setq ido-save-directory-list-file "~/.cache/emacs/.ido.last")
     (setq ido-enable-flex-matching t)
     (setq ido-everywhere t)
     (setq ido-use-virtual-buffers t)))

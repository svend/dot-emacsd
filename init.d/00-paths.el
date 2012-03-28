;; Add all vendor subdirectories to load-path
;;
;; TODO: This also adds all subdirectories. Redo this section so that
;; only top-level directories are added.
(let ((default-directory "~/.emacs.d/vendor"))
  (normal-top-level-add-subdirs-to-load-path))

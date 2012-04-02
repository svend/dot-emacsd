;; Enable recentf mode with ido-mode support
;;
;; http://www.masteringemacs.org/articles/2011/01/27/find-files-faster-recent-files-package/

;; Put recentf save file under ~/.cache
(setq recentf-save-file "~/.cache/emacs")

;; get rid of `find-file-read-only' and replace it with something
;; more useful.
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

;; enable recent files mode.
(recentf-mode t)

;; 50 files ought to be enough (default is 20)
;; (setq recentf-max-saved-items 50)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

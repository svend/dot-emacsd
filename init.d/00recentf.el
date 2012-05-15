;; Enable recent files mode
(recentf-mode t)

(eval-after-load 'recentf
  '(progn
     ;; Enable recentf mode with ido-mode support
     ;;
     ;; http://www.masteringemacs.org/articles/2011/01/27/find-files-faster-recent-files-package/

     ;; Put recentf save file under ~/.cache and reload
     (setq recentf-save-file "~/.cache/emacs/.recentf")
     (recentf-load-list)

     ;; Increase size of recent file list
     (setq recentf-max-saved-items 50)

     ;; Ignore ephemeral git commit message files
     (add-to-list 'recentf-exclude "/COMMIT_EDITMSG$")
     ;; Ignore temporary notmuch ical files
     (add-to-list 'recentf-exclude "^/tmp/notmuch-ical")

     (defun ido-recentf-open ()
       "Use `ido-completing-read' to \\[find-file] a recent file"
       (interactive)
       (if (find-file (ido-completing-read "Find recent file: " recentf-list))
	   (message "Opening file...")
	 (message "Aborting")))))

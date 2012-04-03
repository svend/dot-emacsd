(autoload 'git-commit-mode "git-commit" "Major mode for editing git commit messages" t)

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG" . git-commit-mode))
(add-to-list 'auto-mode-alist '("NOTES_EDITMSG" . git-commit-mode))
(add-to-list 'auto-mode-alist '("MERGE_MSG" . git-commit-mode))
(add-to-list 'auto-mode-alist '("TAG_EDITMSG" . git-commit-mode))

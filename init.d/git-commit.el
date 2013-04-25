(eval-after-load 'git-commit
  '(progn
     ;; Spell check git commit messages
     (add-hook 'git-commit-mode-hook 'flyspell-mode)))

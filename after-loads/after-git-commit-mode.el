;; Spell check git commit messages
(add-hook 'git-commit-mode-hook 'turn-on-flyspell)
(add-hook 'git-commit-mode-hook '(lambda () (message "hello")))

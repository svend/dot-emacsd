(erc-services-mode 1)
(erc-spelling-mode 1)

(setq erc-hide-list '("JOIN" "MODE" "PART" "QUIT"))

(setq bitlbee-username (password-store-get "bitlbee-username")
      bitlbee-password (password-store-get "bitlbee-password")
      freenode-username (password-store-get "freenode/username")
      freenode-password (password-store-get "freenode/password"))

;; Nickserv configuration
(setq erc-prompt-for-nickserv-password nil)
(setq erc-nickserv-passwords
      `((BitlBee ((,bitlbee-username . ,bitlbee-password)))
	((freenode ((,freenode-username . ,freenode-password))))))

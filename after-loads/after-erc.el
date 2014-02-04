(erc-services-mode 1)
(erc-spelling-mode 1)

(setq erc-hide-list '("JOIN" "MODE" "PART" "QUIT"))

(setq bitlbee-username (password-store-copy "bitlbee-username"))
(setq bitlbee-password (password-store-copy "bitlbee-password"))
(setq freenode-username (password-store-copy "freenode/username"))
(setq freenode-password (password-store-copy "freenode/password"))

;; Nickserv configuration
(setq erc-prompt-for-nickserv-password nil)
(setq erc-nickserv-passwords
      `((BitlBee ((,bitlbee-username . ,bitlbee-password)))
	((freenode ((,freenode-username . ,freenode-password))))))

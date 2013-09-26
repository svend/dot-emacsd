(erc-services-mode 1)
(erc-scrolltobottom-mode 1)
(erc-spelling-mode 1)

(setq erc-hide-list '("JOIN" "MODE" "PART" "QUIT"))

;; Nickserv configuration
(setq erc-prompt-for-nickserv-password nil)
(setq erc-nickserv-passwords
      `((BitlBee ((,bitlbee-username . ,bitlbee-password)))
	((freenode ((,freenode-username . ,freenode-password))))))

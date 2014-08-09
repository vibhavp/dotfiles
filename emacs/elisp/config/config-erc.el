;;Enable notifications, truncate-mode and make ERC interpret
;;mirc colors
;;mIRC colour coding
(require 'erc)
(add-to-list 'erc-modules 'notifications)
(erc-truncate-mode 1)
(erc-spelling-mode 1)
(setq erc-interpret-mirc-color t)
(setq erc-save-buffer-on-part nil
      erc-save-queries-on-quit nil)

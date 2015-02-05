(require 'erc)
(erc-notifications-mode)
(defun erc-foonetic ()
  (interactive)
  (erc-tls :server "irc.foonetic.net" :port 7001 :nick "vibhavp" :full-name "Vibhav Pant"))

(provide 'config-irc)

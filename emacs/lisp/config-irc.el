(use-package erc
  :init
  (setq erc-log-channels-directory "~/.erc/logs/")
  (add-hook 'erc-insert-post-hook 'erc-save-buffer-in-logs)
  :config
  (erc-notifications-mode)
  (use-package erc-twitch
    :config
    (erc-twitch-enable)))

(defun erc-foonetic ()
  (interactive)
  (erc-tls :server "irc.foonetic.net" :port 7001 :nick "vibhavp" :full-name "Vibhav Pant"))
(defun erc-mozilla ()
  (interactive)
  (erc-tls :server "irc.mozilla.org" :port 6697 :nick "vibhavp" :full-name "Vibhav Pant"))

(provide 'config-irc)

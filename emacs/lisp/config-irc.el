;; -*- lexical-binding: t; -*-

(use-package erc
  :commands (erc erc-tls)
  :init
  (setq erc-server-auto-reconnect nil)
  (setq erc-log-channels-directory "~/.erc/logs/")
  (add-hook 'erc-insert-post-hook 'erc-save-buffer-in-logs)
  :config
  ;; (use-package erc-twitch
  ;;   :config
  ;;   (erc-twitch-enable))
)

(defun macos-get-keychain-password (item account)
  (string-trim (shell-command-to-string (format "security find-internet-password -a %s -l %s -g -w" account item))))

(use-package erc-services
  :config
  (erc-services-mode 1)
  :init
  (setq erc-nickserv-passwords `((SlashNET (("vibhavp" .
					     ,(funcall
					       (plist-get (nth 0
							       (auth-source-search :host "irc.slashnet.org" :max 1 :login "vibhavp")) :secret))))))
	erc-prompt-for-nickserv-password t)
  :after erc)

(when (eq window-system 'x)
  (use-package erc-desktop-notifications
    :config
    (erc-notifications-mode 1)
    :after erc))

(use-package erc-spelling
  :config
  (erc-spelling-mode 1)
  :after erc)

(defun erc-slashnet ()
  (interactive)
  (erc-tls :server "irc.slashnet.org" :port 6697 :nick "vibhavp" :full-name "Vibhav Pant"))
(defun erc-mozilla ()
  (interactive)
  (erc-tls :server "irc.mozilla.org" :port 6697 :nick "vibhavp" :full-name "Vibhav Pant"))

(provide 'config-irc)

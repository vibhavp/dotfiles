;; -*- lexical-binding: t; -*-

(use-package erc
  :commands (erc erc-tls)
  :init
  (setq erc-server-auto-reconnect t))

(defun macos-get-keychain-password (item account)
  (string-trim (shell-command-to-string (format "security find-internet-password -a %s -l %s -g -w" account item))))

(use-package erc-networks
  :config
  (add-to-list 'erc-server-alist '("Libera.Chat" Libera\.Chat "irc.libera.chat" (6667 6697)))
  (add-to-list 'erc-networks-alist '(Libera\.Chat "irc.libera.chat"))
  :after erc)

(use-package erc-services
  :functions erc-services-mode
  :config
  (erc-services-mode 1)
  (add-to-list 'erc-nickserv-alist
	       '(Libera.Chat
		 "NickServ!NickServ@services.libera.chat"
		 "This\\s-nickname\\s-is\\s-registered.\\s-Please\\s-choose"
		 "NickServ"
		 "IDENTIFY" t nil
		 "You\\s-are\\s-now\\s-identified\\s-for\\s-"))
  :init
  (setq erc-prompt-for-nickserv-password nil
	erc-nickserv-identify-mode 'both
	erc-use-auth-source-for-nickserv-password t))

(defadvice erc-notifications-notify (around macos-notification)
    "Trigger notifications on macOS"
    (let* ((channel (if privp (erc-get-buffer nick) (current-buffer)))
           (title (format "%s in %s" nick channel))
           (body (erc-controls-strip (substring-no-properties msg))))
      (ns-do-applescript (format "display notification %s with title %s"
				 (prin1-to-string body)
				 (prin1-to-string title)))))

(use-package erc-desktop-notifications
  :config
  (ad-activate 'erc-notifications-notify)
  (erc-notifications-mode 1)
  :after erc)

(use-package erc-spelling
  :config
  (erc-spelling-mode 1)
  :after erc)

(defun erc-slashnet ()
  (interactive)
  (erc-tls :server "irc.slashnet.org" :port 6697 :nick "vibhavp" :full-name "Vibhav Pant"))

(defun erc-libera ()
  (interactive)
  (erc-tls :server "irc.libera.chat" :port 6697 :nick "vibhavp" :full-name "Vibhav Pant"))

(provide 'config-irc)

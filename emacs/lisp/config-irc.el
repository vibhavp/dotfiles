(require 'rcirc)
(require 'notifications)
(add-hook 'rcirc-mode-hook (lambda ()
			     (flyspell-mode 1)))
(set-face-foreground 'rcirc-my-nick "red" nil)
(setq rcirc-default-nick "vibhavp")
(setq rcirc-default-user-name "vibhavp")
(setq rcirc-default-full-name "Vibhav Pant")
(setq rcirc-server-alist '(("irc.foonetic.net" :port 7001
			    :nick "vibhavp" :full-name "Vibhav Pant"
			    :encryption tls)
			   ("irc.freenode.net" :port 7000
			    :nick "vibhavp" :full-name "Vibhav Pant"
			    :encryption tls)))

(defun rcirc-notify-hl (process sender reponse target text)
  (cond
   ((string= sender target)
    ;;privmsg
    (if (not (string= (downcase sender) "nickserv"))
   	(notifications-notify :title (format "MSG from %s" sender)
   			      :body text)
      (notifications-notify :title "PRIVMSG from Nickserv")))
   ((string-match rcirc-default-nick text)
    ;;hilight on channel
    (unless (or (string-match rcirc-default-nick sender)
		(string= target nil))
      (notifications-notify :title target
			    :body (format "%s: %s" sender text))))))
(add-hook 'rcirc-print-functions 'rcirc-notify-hl)
(provide 'config-irc)

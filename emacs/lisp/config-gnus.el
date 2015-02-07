(setq gnus-select-method
      '(nnmaildir "GMail" 
                  (directory "~/Maildir/")
                  (directory-files nnheader-directory-files-safe) 
                  (get-new-mail nil))
 message-send-mail-function 'smtpmail-send-it
 smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
 smtpmail-auth-credentials '(("smtp.gmail.com" 587
			      "user@gmail.com" nil))
 smtpmail-default-smtp-server "smtp.gmail.com"
 smtpmail-smtp-server "smtp.gmail.com"
 smtpmail-smtp-service 587
 gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]"
 gnus-thread-sort-functions '(gnus-thread-sort-by-number
			      gnus-thread-sort-by-date)
 mail-host-address "gmail.com")

(provide 'config-gnus)

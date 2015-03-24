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
(setq gnus-summary-line-format "%U%R%z%B%(%[%4&user-date;: %-23,23f%]%) %s\n"
      gnus-sum-thread-tree-false-root ""
      gnus-sum-thread-tree-indent " "
      gnus-sum-thread-tree-leaf-with-other "├► "
      gnus-sum-thread-tree-root ""
      gnus-sum-thread-tree-single-leaf "╰► "
      gnus-sum-thread-tree-vertical "│")
(provide 'config-gnus)

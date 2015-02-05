(setq gnus-select-method 
      '(nnmaildir "GMail" 
                  (directory "~/Maildir/")
                  (directory-files nnheader-directory-files-safe) 
                  (get-new-mail nil)))

(provide 'config-gnus)

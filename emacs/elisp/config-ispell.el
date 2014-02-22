(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
(setq ispell-current-dictionary "~/usr/share/hunspell/en-GB"
      ispell-program-name "ispell" ;; I 
      flyspell-issue-message-flag nil)

(provide 'config-ispell)

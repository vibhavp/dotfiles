(use-package ispell
  :init
  (setq ispell-current-dictionary "~/usr/share/hunspell/en-GB"
	ispell-program-name "ispell"))

(use-package flyspell
  :after ispell
  :init
  (setq flyspell-issue-message-flag nil)
  (dolist (hook '(text-mode-hook change-log-mode-hook log-edit-mode-hook))
    (add-hook hook #'(lambda () (flyspell-mode 1)))))

(provide 'config-ispell)

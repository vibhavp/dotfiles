;; -*- lexical-binding: t; -*-

(use-package ispell
  :init
  (setq ispell-current-dictionary "~/usr/share/hunspell/en-GB"
	ispell-program-name "ispell"))

(use-package flyspell
  :after ispell
  :init
  (setq flyspell-issue-message-flag nil)
  :hook ((text-mode . flyspell-mode)
	 (change-log-mode-hook . flyspell-mode)
	 (log-edit-mode-hook . flyspell-mode)))

(provide 'config-ispell)

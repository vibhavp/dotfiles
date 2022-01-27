;; -*- lexical-binding: t; -*-

(defun config-ispell-flyspell-if-not-tramp ()
  (unless (file-remote-p default-directory) (flyspell-mode)))

(use-package ispell
  :init
  (setq ispell-current-dictionary "~/usr/share/hunspell/en-GB"
	ispell-program-name "ispell")
  :demand t)

(use-package flyspell
  :after ispell
  :init
  (setq flyspell-issue-message-flag nil)
  :hook ((text-mode . config-ispell-flyspell-if-not-tramp)
	 (change-log-mode-hook . config-ispell-flyspell-if-not-tramp)
	 (log-edit-mode-hook . config-ispell-flyspell-if-not-tramp)))



(provide 'config-ispell)

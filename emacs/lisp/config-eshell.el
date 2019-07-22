;; -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  :ensure t)

(use-package esh-module)

(use-package password-cache
  :init
  (setq password-cache t
	password-cache-expiry 3600))

(use-package eshell
  :after password-cache
  :init
  (add-to-list 'eshell-modules-list 'eshell-tramp)
  :commands (eshell))

(provide 'config-eshell)

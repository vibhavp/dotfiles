;; -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :init
  (setq exec-path-from-shell-arguments '("-l"))
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  :ensure t)

(setq password-cache t
      password-cache-expiry 3600)


(provide 'config-eshell)

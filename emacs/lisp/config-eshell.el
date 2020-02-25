;; -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :init
  (setq exec-path-from-shell-arguments '("-l")
	exec-path-from-shell-variables '("PATH" "MANPATH" "LC_CTYPE" "LC_ALL"
					 "GO111MODULE" "GOPRIVATE" "GONOSUMDB"))
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  :ensure t)

(setq password-cache t
      password-cache-expiry 3600)


(provide 'config-eshell)

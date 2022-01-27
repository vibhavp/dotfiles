;; -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :init
  (setq exec-path-from-shell-arguments '("-l")
	exec-path-from-shell-variables '("PATH" "MANPATH" "LC_CTYPE" "LC_ALL"
					 "GO111MODULE" "GOPRIVATE" "GOPROXY" "GONOSUMDB" "CASK_EMACS"
					 "LIBRARY_PATH" "LD_LIBRARY_PATH")
	exec-path-from-shell-shell-name "/bin/zsh")
  :config
  (when (memq window-system '(mac ns x pgtk))
    (exec-path-from-shell-initialize))
  :ensure t)

(setq password-cache t
      password-cache-expiry 3600)


(provide 'config-eshell)

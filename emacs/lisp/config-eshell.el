(use-package eshell
  :init
  (if (not (eq system-type 'windows-nt))
    (exec-path-from-shell-initialize)
    (setq exec-path (split-string eshell-path-env ";")))
  (setq password-cache t
	password-cache-expiry 3600)
  (add-hook 'eshell-mode-hook #'(lambda ()
				(nlinum-mode -1)
				(unless (eq system-type 'windows-nt)
				  (setq eshell-path-env (getenv "PATH")))))
  :config
  (setenv "CC" "gcc")
  (use-package em-tramp))
(provide 'config-eshell)

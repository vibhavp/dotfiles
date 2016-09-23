(require 'em-tramp)
(eval-after-load 'eshell '(setenv "CC" "gcc"))
(eshell-command "alias sudo 'eshell/sudo $*'")
(setq password-cache t
      password-cache-expiry 3600)
(add-hook 'eshell-mode-hook #'(lambda ()
				(nlinum-mode -1)
				(unless (eq system-type 'windows-nt)
				  (setq eshell-path-env (getenv "PATH")))))
(if (not (eq system-type 'windows-nt))
    (exec-path-from-shell-initialize)
  (setq exec-path (split-string eshell-path-env ";")))
(provide 'config-eshell)

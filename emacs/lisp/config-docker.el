(use-package docker
  :ensure t
  :commands (docker))

(use-package lsp-dockerfile
  :demand t
  :hook ((dockerfile-mode . lsp-deferred))
  :after (lsp-mode lsp-lens)
  :init
  (setq lsp-dockerfile-language-server-command '("npx" "--yes" "dockerfile-language-server-nodejs" "--stdio"))
  :ensure lsp-mode)

(provide 'config-docker)

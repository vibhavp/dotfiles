(use-package docker
  :ensure t
  :commands (docker))

(use-package lsp-dockerfile
  :demand t
  :hook ((dockerfile-mode . lsp-deferred))
  :after (lsp-mode lsp-lens)
  :ensure lsp-mode)

(provide 'config-docker)

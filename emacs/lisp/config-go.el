;; -*- lexical-binding: t; -*-

(use-package go-mode
  :hook ((before-save . gofmt-before-save))
  :defines gofmt-command
  :config
  (setq gofmt-command "goimports")
  :ensure t)

(use-package lsp-go
  :demand t
  :hook ((go-mode . lsp)
	 (go-mode . lsp-lens-mode))
  :ensure lsp-mode
  :after (lsp-mode lsp-lens))

(use-package go-dlv
  :ensure t)

(use-package go-stacktracer
  :ensure t)

(provide 'config-go)

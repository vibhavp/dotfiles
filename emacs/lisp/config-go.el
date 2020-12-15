;; -*- lexical-binding: t; -*-

(use-package go-mode
  :defines gofmt-command
  :config
  (setq gofmt-command "goimports")
  :ensure t)

(use-package lsp-go
  :demand t
  :hook ((go-mode . lsp)
	 (go-mode . lsp-lens-mode)
	 (go-mode . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t))))
  :ensure lsp-mode
  :after (lsp-mode lsp-lens))

(use-package go-dlv
  :ensure t)

(use-package go-stacktracer
  :ensure t)

(provide 'config-go)

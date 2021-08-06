;; -*- lexical-binding: t; -*-

(use-package go-mode
  :defines gofmt-command
  :config
  (setq gofmt-command "goimports")
  :ensure t)

(use-package lsp-go
  :demand t
  :hook ((go-mode . lsp-deferred)
	 (go-mode . lsp-lens-mode)
	 (go-mode . (lambda ()
		      (push "[/\\\\]vendor" lsp-file-watch-ignored-directories)
		      (add-hook 'before-save-hook #'lsp-format-buffer 0 t)
		      (add-hook 'before-save-hook #'lsp-organize-imports 0 t))))
  :config
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t)
     ("gopls.staticcheck" t t)))
  :ensure lsp-mode
  :after (lsp-mode lsp-lens))

;; (use-package go-dlv
;;   :ensure t)

(use-package go-stacktracer
  :ensure t)

(provide 'config-go)

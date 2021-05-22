;; -*- lexical-binding: t; -*-

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-enable-snippet nil
	lsp-auto-configure nil
	lsp-enable-file-watchers t
	lsp-eldoc-render-all t
	lsp-completion-enable t
	lsp-completion-provider :none
	lsp-diagnostics-provider :flymake
	lsp-semantic-tokens-enable t)
  :config
  (add-to-list 'lsp-disabled-clients 'ccls)
  (add-to-list 'lsp-disabled-clients 'jsts-ls)
  (lsp-semantic-tokens-mode)
  :load-path "~/src/lsp-mode/")

(use-package lsp-completion
  :hook (lsp-configure . lsp-completion--enable)
  :after lsp-mode)

(use-package lsp-diagnostics
  :hook ((lsp-configure . (lambda ()
			    (flycheck-mode -1)
			    (lsp-diagnostics-mode 1))))
  :load-path "~/src/lsp-mode/"
  :after lsp-mode)

(use-package lsp-treemacs
  :ensure t
  :hook (lsp-mode . lsp-treemacs-sync-mode))

(use-package lsp-lens
  :ensure lsp-mode
  :after lsp-mode)

(provide 'config-lsp)

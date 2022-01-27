;; -*- lexical-binding: t; -*-

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-enable-snippet nil
	lsp-headerline-breadcrumb-enable t
	lsp-modeline-code-actions-enable t
	lsp-modeline-diagnostics-enable t
	lsp-modeline-workspace-status-enable t
	lsp-lens-enable t
	lsp-auto-configure t
	lsp-enable-text-document-color t
	lsp-enable-indentation t
	lsp-enable-symbol-highlighting t
	lsp-enable-links t
	lsp-enable-file-watchers t
	lsp-eldoc-render-all t
	lsp-completion-enable t
	lsp-completion-provider :none
	lsp-diagnostics-provider :flymake
	lsp-enable-dap-auto-configure nil
	lsp-semantic-tokens-enable nil)
  :config
  (add-to-list 'lsp-disabled-clients 'ccls)
  (add-to-list 'lsp-disabled-clients 'jsts-ls)
  :load-path "~/src/lsp-mode/")

(use-package lsp-completion
  :hook (lsp-configure . lsp-completion--enable)
  :after lsp-mode)

(use-package lsp-diagnostics
  :hook ((lsp-configure . (lambda ()
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

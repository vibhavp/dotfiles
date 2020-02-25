;; -*- lexical-binding: t; -*-

(use-package lsp-clients
  :config
  (remhash 'pyls lsp-clients)
  :load-path "~/src/lsp-mode/")

(use-package lsp-mode
  :init
  (setq lsp-enable-snippet nil
	lsp-auto-configure nil
	lsp-enable-file-watchers nil
	lsp-eldoc-render-all t
	lsp-diagnostic-package :flymake)
  (add-to-list 'lsp-disabled-clients 'ccls)
  :load-path "~/src/lsp-mode/"
  :hook (((c-mode c++-mode objc-mode) . lsp)
	 (python-mode . lsp)))

;; (use-package lsp-python-ms
;;   :init
;;   (setq lsp-python-ms-executable "mspyls"))

(provide 'config-lsp)

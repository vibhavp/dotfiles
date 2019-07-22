;; -*- lexical-binding: t; -*-

(use-package speedbar
  :config
  (speedbar-add-supported-extension ".go"))
;; (use-package go-complete
;;   :init
;;   (add-hook 'completion-at-point-functions 'go-complete-at-point))
;; (use-package go-mode
;;   :init
;;   (add-hook 'before-save-hook 'gofmt-before-save))
(use-package go-mode
  :hook ((go-mode . lsp)
	 (before-save . gofmt-before-save))
  :after lsp
  :ensure t)

(provide 'config-go)

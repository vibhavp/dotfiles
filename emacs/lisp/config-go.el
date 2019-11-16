;; -*- lexical-binding: t; -*-

;; (use-package speedbar
;;   :config
;;   (speedbar-add-supported-extension ".go"))
;; (use-package go-complete
;;   :init
;;   (add-hook 'completion-at-point-functions 'go-complete-at-point))
;; (use-package go-mode
;;   :init
;;   (add-hook 'before-save-hook 'gofmt-before-save))
(use-package go-mode
  :hook ((go-mode . lsp)
	 (go-mode . (lambda ()
		      (flycheck-mode -1)
		      (lsp--flymake-setup)))
	 (before-save . gofmt-before-save))
  :after lsp
  :mode "\\.go\\'"
  :config
  (setq gofmt-command "goimports")
  :ensure t)

(provide 'config-go)

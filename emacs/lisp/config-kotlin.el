;; -*- lexical-binding: t; -*-

(use-package kotlin-mode
  :after lsp
  :ensure t
  :hook ((kotlin-mode . lsp)
	 (kotlin-mode . (lambda () (add-hook 'before-save-hook #'whitespace-cleanup nil t)))))

(provide 'config-kotlin)

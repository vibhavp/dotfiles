(use-package kotlin-mode
  :after lsp
  :hook ((kotlin-mode . lsp)
	 (kotlin-mode . lsp--flymake-setup)
	 (kotlin-mode . (lambda () (add-hook 'before-save-hook #'whitespace-cleanup nil t)))))

(provide 'config-kotlin)

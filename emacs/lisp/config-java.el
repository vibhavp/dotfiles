(use-package lsp-java
  :ensure t
  :after lsp)

(use-package java-mode
  :after lsp-java
  :hook ((java-mode . lsp)
	 (java-mode . (lambda ()
			  (flycheck-mode -1)
			  (lsp--flymake-setup)))))

(provide 'config-java)

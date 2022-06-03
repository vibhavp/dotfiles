;; -*- lexical-binding: t; -*-

(use-package lsp-java
  :ensure t
  :after lsp)

(use-package cc-mode
  :after lsp-java
  :hook ((java-mode . lsp)))

(provide 'config-java)

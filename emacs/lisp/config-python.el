;; -*- lexical-binding: t; -*-
(use-package lsp-pyright
  :hook (python-mode . lsp)
  :demand t
  :ensure lsp-pyright
  :after lsp-mode)

(provide 'config-python)

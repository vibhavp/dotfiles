(use-package lsp-pyls
  :hook (python-mode . lsp)
  :demand t
  :ensure lsp-mode
  :after lsp-mode)

(provide 'config-python)

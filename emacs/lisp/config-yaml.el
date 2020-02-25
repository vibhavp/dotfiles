;; -*- lexical-binding: t; -*-

(use-package yaml-mode
  :ensure t
  :hook ((yaml-mode . highlight-indentation-mode))
  :mode ("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(provide 'config-yaml)

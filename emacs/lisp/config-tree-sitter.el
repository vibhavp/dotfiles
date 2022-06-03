;; -*- lexical-binding: t; -*-

(use-package tree-sitter
  :commands (global-tree-sitter-mode)
  :init
  (setq tsc-dyn-get-from '(:compilation))
  :hook
  ((tree-sitter-after-on . tree-sitter-hl-mode)
   (after-init . global-tree-sitter-mode))
  :ensure t)

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

(provide 'config-tree-sitter)

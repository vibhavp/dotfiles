;; -*- lexical-binding: t; -*-

(use-package haskell-mode
  :init
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
  :ensure t)

(provide 'config-haskell)

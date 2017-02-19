(require 'haskell-mode)

(use-package haskell-mode
  :init
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))
(provide 'config-haskell)

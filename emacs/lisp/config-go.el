(use-package speedbar
  :config
  (speedbar-add-supported-extension ".go"))
(use-package go-complete
  :init
  (add-hook 'completion-at-point-functions 'go-complete-at-point))
(use-package go-mode
  :init
  (add-hook 'before-save-hook 'gofmt-before-save))
(provide 'config-go)

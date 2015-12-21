(require 'go-complete)
(add-hook 'completion-at-point-functions 'go-complete-at-point)
(add-hook 'before-save-hook 'gofmt-before-save)
(provide 'config-go)

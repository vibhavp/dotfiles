(use-package js2-mode
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-hook 'js-mode-hook 'js2-minor-mode))
(use-package flycheck
  :init
  (add-to-list 'flycheck-disabled-checkers 'json-jsonlist)
  :config
  (flycheck-add-mode 'javascript-eslint 'js2-mode))

(provide 'config-js)

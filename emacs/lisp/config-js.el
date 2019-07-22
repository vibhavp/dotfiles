(use-package js2-mode
  :mode ("\\.js\\'" . js2-mode)
  :interpreter ("node" . js2-mode)
  :config
  (add-to-list 'flycheck-disabled-checkers 'json-jsonlist)
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  :after flycheck
  :ensure t)
(use-package json-mode
  :ensure t)

(provide 'config-js)

(use-package js2-mode
  :mode ("\\.js\\'" . js-mode)
  :interpreter ("node" . js-mode)
  :bind ( :map js-mode-map
	  ("M-." . xref-find-definitions)
	  :map smartparens-mode-map
	  ("M-?" . xref-find-references))
  :hook ((js-mode . lsp)
	 (js-mode . js2-minor-mode)
	 (js-mode . prettier-js-mode))
  :config
  (add-to-list 'flycheck-disabled-checkers 'json-jsonlist)
  (flycheck-add-mode 'javascript-eslint 'js-mode)
  (add-hook 'before-save-hook #'whitespace-cleanup 0 t)
  :after flycheck
  :ensure t)

(use-package json-mode
  :mode ("\\.json\\'" . json-mode)
  :ensure t)

(use-package typescript-mode
  :hook ((typescript-mode . lsp)
	 (typescript-mode . prettier-js-mode))
  :config
  (add-hook 'before-save-hook #'whitespace-cleanup 0 t))

(provide 'config-js)

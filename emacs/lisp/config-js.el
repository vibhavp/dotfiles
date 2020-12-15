;; -*- lexical-binding: t; -*-

(use-package prettier-js
  :ensure t)

(use-package js
  ;; :mode ("\\.js\\'" . js-mode)
  :interpreter ("node" . js-mode)
  :hook (;; (js-mode . js2-minor-mode)
	 ;; (js-mode . prettier-js-mode)
	 ;; (js-mode . (lambda () (add-hook 'before-save-hook #'whitespace-cleanup 0 t)))
	 (js-mode . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t))))
  :ensure t)

(use-package json-mode
  :mode ("\\.json\\'" . json-mode)
  :ensure t)

(use-package typescript-mode
  :hook ((typescript-mode . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t))))
  :demand t
  :ensure t)

(use-package lsp-javascript
  :demand t
  :hook ((js-mode . lsp)
	 (typescript-mode . lsp))
  :ensure lsp-mode
  :after (lsp-mode typescript-mode))

(provide 'config-js)

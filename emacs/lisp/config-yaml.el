;; -*- lexical-binding: t; -*-

(use-package yaml-mode
  :ensure t
  :hook ((yaml-mode . highlight-indentation-mode)
	 (yaml-mode . lsp)
	 (yaml-mode . (lambda ()
			(add-hook 'before-save-hook #'lsp-format-buffer 0 t))))
  :mode ("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(use-package lsp-yaml
  :demand t
  :ensure lsp-mode
  :init
  (setq lsp-yaml-server-command '("npx" "--yes" "yaml-language-server" "--stdio"))
  :after (lsp-mode yaml-mode))

(provide 'config-yaml)

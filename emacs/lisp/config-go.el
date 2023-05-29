;; -*- lexical-binding: t; -*-

(use-package go-mode
  :defines gofmt-command
  :config
  (setq gofmt-command "goimports")
  :ensure t)

(use-package lsp-go
  :demand t
  :hook ((go-mode . lsp-deferred)
	 (go-mode . lsp-lens-mode)
	 (go-mode . (lambda ()
		      (push "[/\\\\]vendor" lsp-file-watch-ignored-directories)
		      (add-hook 'before-save-hook #'lsp-format-buffer 0 t)
		      (add-hook 'before-save-hook #'lsp-organize-imports 0 t))))
  :config
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t)
     ("gopls.staticcheck" t t)))
  (setq lsp-go-codelenses (map-insert lsp-go-codelenses 'gc_details t))
  :ensure lsp-mode
  :init
  (setq lsp-go-library-directories
	(list (f-join (string-trim (shell-command-to-string "go env GOROOT")) "src")))
  (add-to-list 'safe-local-variable-values '(lsp-go-build-flags . ["-tags=freebsd"]))
  (add-to-list 'safe-local-variable-values '(lsp-go-build-flags . ["-tags=wireinject"]))
  :after (lsp-mode lsp-lens))

;; (use-package go-dlv
;;   :ensure t)

(use-package go-stacktracer
  :ensure t)

(provide 'config-go)

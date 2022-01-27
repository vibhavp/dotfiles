(use-package lsp-bash
  :demand t
  :ensure lsp-mode
  :config
  (lsp-dependency 'bash-language-server
                  '(:system "npx"))
  (advice-add 'lsp-bash--bash-ls-server-command :override
	      (lambda () (list "npx" "--yes" "bash-language-server" "start")))
  :hook ((sh-mode . (lambda () (when (lsp-bash-check-sh-shell) (lsp)))))
  :after (lsp-mode))

(provide 'config-bash)

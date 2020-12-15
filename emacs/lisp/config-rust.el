;; -*- lexical-binding: t; -*-

;; (setq racer-cmd "~/.cargo/bin/racer")
;; (setq racer-rust-src-path "~/src/rust/src")
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)

(use-package lsp-rust
  :demand t
  :config
  (add-to-list 'lsp-disabled-clients 'rls)
  :hook ((rust-mode . lsp)
	 (rust-mode . lsp-lens-mode)
	 (rust-mode . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t))))
  :ensure lsp-mode
  :after (lsp-mode lsp-lens))

(provide 'config-rust)

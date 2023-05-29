;; -*- lexical-binding: t; -*-

;; (setq racer-cmd "~/.cargo/bin/racer")
;; (setq racer-rust-src-path "~/src/rust/src")
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)

(use-package rust-mode
  :ensure rust-mode
  :hook ((rust-mode . lsp)
	 (rust-mode . lsp-lens-mode)
	 (rust-mode . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t))))
  :if (not (treesit-available-p)))

(use-package lsp-rust
  :demand t
  :config
  (add-to-list 'lsp-language-id-configuration '(rust-ts-mode . "rust"))
  (add-to-list 'lsp-disabled-clients 'rls)
  (setq lsp-rust-analyzer-cargo-override-command ["cargo" "clippy" "--message-format=json" "--workspace"
						  "--all-targets" "--quiet" "--" "-Aclippy::upper_case_acronyms"]
	lsp-rust-analyzer-proc-macro-enable t
	lsp-rust-analyzer-server-command '("rustup" "run" "stable" "rust-analyzer"))
  :after (lsp-mode lsp-lens))

(use-package rust-ts-mode
  :if (treesit-available-p)
  :init
  (add-to-list 'major-mode-remap-alist '(rust-mode . rust-ts-mode))
  :hook ((rust-ts-mode . lsp)
	 (rust-ts-mode . lsp-lens-mode)
	 (rust-ts-mode . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer 0 t)))))

(use-package cargo
  :ensure cargo
  :hook ((rust-mode . cargo-minor-mode)
	 (rust-ts-mode . cargo-minor-mode)))

(provide 'config-rust)

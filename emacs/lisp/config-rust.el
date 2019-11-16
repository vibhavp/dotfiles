;; (setq racer-cmd "~/.cargo/bin/racer")
;; (setq racer-rust-src-path "~/src/rust/src")
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)
(use-package rust-mode
  :hook (((rust-mode) . lsp)
	 ((rust-mode) . (lambda ()
			  (flycheck-mode -1)
			  (lsp--flymake-setup))))
  :after lsp
  :ensure t)
(provide 'config-rust)

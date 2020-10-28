;; -*- lexical-binding: t; -*-

;; (setq racer-cmd "~/.cargo/bin/racer")
;; (setq racer-rust-src-path "~/src/rust/src")
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)
(use-package rust-mode
  :hook (((rust-mode) . lsp))
  :after lsp
  :ensure t)
(provide 'config-rust)

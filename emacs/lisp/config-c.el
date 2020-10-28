;; -*- lexical-binding: t; -*-

;;Everything related to C

(use-package google-c-style
  :demand t
  :hook
  ((c-mode-common . google-set-c-style)
   (c-mode-common . google-make-newline-indent))
  :ensure t)

(use-package flycheck
  :config
  (global-flycheck-mode t)
  :ensure t)

(use-package lsp-clangd
  :demand t
  :after lsp-mode
  :ensure lsp-mode
  :hook (((c-mode c++-mode objc-mode) . lsp)))

;; (use-package ccls
;;   :demand t
;;   :hook (((c-mode c++-mode objc-mode) . lsp))
;;   :ensure t)

(provide 'config-c)

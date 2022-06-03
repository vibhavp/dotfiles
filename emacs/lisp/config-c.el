;; -*- lexical-binding: t; -*-

;;Everything related to C

(use-package google-c-style
  :demand t)

;; (use-package flycheck
;;   :config
;;   (global-flycheck-mode t)
;;   :ensure t)

(use-package lsp-clangd
  :demand t
  :after lsp-mode
  :ensure lsp-mode
  :hook (((c-mode c++-mode objc-mode) . lsp)
	 ((c-mode-common objc-mode) .
	  (lambda ()
	    (remove-hook 'flymake-diagnostic-functions 'flymake-cc t)
	    (add-hook 'before-save-hook #'delete-trailing-whitespace 0 t)))
	 ((flymake-mode) .
	  (lambda ()
	    (setq-local flymake-proc-allowed-file-name-masks nil)))))

;; (use-package ccls
;;   :demand t
;;   :hook (((c-mode c++-mode objc-mode) . lsp))
;;   :ensure t)

(provide 'config-c)

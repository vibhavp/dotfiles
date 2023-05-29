;; -*- lexical-binding: t; -*-

;; Everything related to C

(use-package lsp-clangd
  :after (lsp-mode cc-mode)
  :ensure lsp-mode
  :hook (((c-mode c++-mode objc-mode) . lsp-deferred)
	 ((c-mode-common objc-mode) .
	  (lambda ()
	    (electric-indent-local-mode -1)
	    (remove-hook 'flymake-diagnostic-functions 'flymake-cc t)))))

(use-package c-ts-mode
  :if (treesit-available-p)
  :init
  (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
  (add-to-list 'lsp-language-id-configuration '(c-ts-mode . "c"))
  (add-to-list 'lsp-language-id-configuration '(c++-ts-mode . "cpp"))
  :hook (((c-ts-base-mode) . lsp-deferred)))

;; (use-package ccls
;;   :demand t
;;   :hook (((c-mode c++-mode objc-mode) . lsp))
;;   :ensure t)

(provide 'config-c)

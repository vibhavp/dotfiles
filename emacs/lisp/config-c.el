;; -*- lexical-binding: t; -*-

;; Everything related to C

(use-package lsp-clangd
  :after (lsp-mode cc-mode)
  :ensure lsp-mode
  :init
  (setq lsp-clangd-binary-path (or
				(executable-find "clangd-17")
				(executable-find "clangd-15")
				(executable-find "clangd")))
  :hook (((c-mode c++-mode objc-mode) . lsp-deferred)
	 ((c-mode-common objc-mode) .
	  (lambda ()
	    (remove-hook 'flymake-diagnostic-functions 'flymake-cc t)))))

(use-package c-ts-mode
  :if (treesit-available-p)
  :init
  (setq c-ts-mode-emacs-sources-support t)
  (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
  (add-to-list 'lsp-language-id-configuration '(c-ts-mode . "c"))
  (add-to-list 'lsp-language-id-configuration '(c++-ts-mode . "cpp"))
  (add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c-or-c++-mode . c-or-c++-ts-mode))
  :hook (((c-ts-base-mode) . lsp-deferred)))

(use-package objc-mode
  :mode "\\.mm\\'")

;; (use-package ccls
;;   :demand t
;;   :hook (((c-mode c++-mode objc-mode) . lsp))
;;   :ensure t)

(provide 'config-c)

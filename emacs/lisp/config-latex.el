;; -*- lexical-binding: t; -*-

(use-package tex
  :mode (("\\.tex\\'" . tex-mode))
  :init
  (setq TeX-auto-save t
	TeX-PDF-mode t
	TeX-parse-self t)
  :ensure auctex)

(use-package preview
  :ensure auctex
  :after (tex))

(use-package preview-dvisvgm
  :init
  (setq preview-image-type 'dvisvgm)
  :ensure t
  :after (preview))

(use-package lsp-tex
  :after (lsp-mode tex)
  :hook ((tex-mode . lsp-deferred)))

(use-package bibtex
  :mode ("\\.bib\\'" . bibtex-mode))

(provide 'config-latex)

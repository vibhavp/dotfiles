;; -*- lexical-binding: t; -*-

(use-package tex
  :mode (("\\.tex\\'" . tex-mode))
  :init
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  :ensure auctex)

(use-package bibtex
  :mode ("\\.bib\\'" . bibtex-mode))

(provide 'config-latex)

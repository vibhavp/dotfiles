;; -*- lexical-binding: t; -*-
(use-package org
  :defer t
  :config
  (setq org-latex-default-packages-alist
	(seq-remove (lambda (package) (string-equal (cadr package) "hyperref"))
		    org-latex-default-packages-alist))
  (add-to-list 'org-latex-packages-alist
	       '("colorlinks=true,urlcolor=blue,linkcolor=red" "hyperref" nil)))

(use-package ox-beamer
  :after (org)
  :config
  (setq org-beamer-theme nil))

(provide 'config-org)

;; -*- lexical-binding: t; -*-

(use-package tramp
  :init
  (setq vc-ignore-dir-regexp
	(format "\\(%s\\)\\|\\(%s\\)"
		vc-ignore-dir-regexp
		tramp-file-name-regexp)))

(use-package tramp-nspawn
  :ensure t
  :hook
  ((after-init . tramp-nspawn-setup)))

(provide 'config-tramp)

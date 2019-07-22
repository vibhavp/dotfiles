;; -*- lexical-binding: t; -*-

;; '(' and  ')' for details
(use-package dired)

(use-package dired-async
  :after dired
  :config
  (dired-async-mode)
  :ensure async)

(use-package dired-x
  :after dired
  :hook ((dired-mode . dired-omit-mode)))

(provide 'config-dired)

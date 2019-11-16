;; -*- lexical-binding: t; -*-

;; '(' and  ')' for details
(use-package dired
  :commands (dired))

(use-package dired-async
  :after dired
  :defer t
  :config
  (dired-async-mode)
  :ensure async)

(use-package dired-x
  :after dired
  :hook ((dired-mode . dired-omit-mode)))

(provide 'config-dired)

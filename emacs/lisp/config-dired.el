;; -*- lexical-binding: t; -*-

;; '(' and  ')' for details
(use-package dired
  :config
  (setq dired-listing-switches "-alh")
  (when (memq window-system '(mac ns))
    (setq dired-chmod-program "gtouch"
	  dired-touch-program "gtouch"
	  dired-chown-program "gchown"
	  ls-lisp-use-insert-directory-program t
	  insert-directory-program "gls"))
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

(use-package all-the-icons-dired
  :ensure t
  :hook ((dired-mode . all-the-icons-dired-mode)))

(use-package dired-du
  :ensure t
  :config
  (setq dired-du-size-format t))

(provide 'config-dired)

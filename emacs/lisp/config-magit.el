;; -*- lexical-binding: t; -*-

(use-package libgit
  :ensure t)

(use-package magit
  :commands (magit magit-status magit-diff magit-checkout)
  :after (libgit))

(use-package magit-delta
  :ensure t
  :hook ((magit-mode . magit-delta-mode)))

(use-package forge
  :ensure t
  :after (magit))

(use-package libgit
  :ensure t)

(use-package magit-libgit
  :ensure t)

;; (Add-Hook 'after-init-hook 'magit-todos-mode)

(provide 'config-magit)

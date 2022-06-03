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

(use-package magit-libgit
  :ensure t)

;; (use-package blamer
;;   :ensure t
;;   :load-path "~/src/blamer.el"
;;   :custom
;;   (blamer-idle-time 0.3)
;;   (blamer-min-offset 70)
;;   :config
;;   (require 'blamer-libgit)
;;   (global-blamer-mode 1))

;; (Add-Hook 'after-init-hook 'magit-todos-mode)

(provide 'config-magit)

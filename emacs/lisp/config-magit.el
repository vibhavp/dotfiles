;; -*- lexical-binding: t; -*-

;; (use-package libgit
;;   :ensure t)

(use-package libgit
  :load-path (lambda () (expand-file-name "~/src/libegit2")))

(use-package magit
  :load-path (lambda () (expand-file-name "~/src/magit/lisp"))
  :commands (magit magit-status magit-diff magit-checkout))

(use-package magit-libgit
  :load-path (lambda () (expand-file-name "~/src/magit/lisp")))

(use-package forge
  :ensure t
  :init
  (when (and (fboundp 'sqlite-available-p) (sqlite-available-p))
    (setq forge-database-connector 'sqlite-builtin)
    (setq emacsql-sqlite-c-compilers '("true")))
  :after magit)

;; (use-package magit-delta
;;   :ensure t
;;   :hook ((magit-mode . magit-delta-mode)))

(use-package emacsql-sqlite-builtin
  :ensure t
  :if (and (fboundp 'sqlite-available-p) (sqlite-available-p)))

(use-package magit-patch-changelog
  :ensure t
  :after (magit))

(use-package gitconfig-mode
  :ensure git-modes)

;; (use-package magit-libgit
;;   :ensure t)

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

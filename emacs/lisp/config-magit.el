;; (use-package magit-todos
;;   :ensure t)

;; (magit-todos-mode 1)

(use-package magit
  :commands (magit magit-status magit-diff magit-checkout)
  :ensure t
  :after magit-todos)

;; (add-hook 'after-init-hook 'magit-todos-mode)

(provide 'config-magit)

;; (use-package magit-todos
;;   :ensure t)

;; (magit-todos-mode 1)

(use-package magit
  :commands (magit magit-status magit-diff magit-checkout)
  :ensure t
  :demand t
  ;; :after magit-todos
  )

(use-package forge
  :ensure t
  :after (magit))

;; (add-hook 'after-init-hook 'magit-todos-mode)

(provide 'config-magit)

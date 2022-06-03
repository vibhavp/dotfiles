(use-package eterm-256color
  :demand t
  :ensure t)

(use-package vterm
  :commands (vterm)
  :ensure t
  :init
  (setq vterm-term-environment-variable "eterm-color")
  :custom (vterm-install t))

(use-package multi-vterm
  :ensure t)

;; (setq initial-buffer-choice #'multi-vterm-next)

(provide 'config-vterm)

(use-package eterm-256color
  :demand t
  :ensure t)

(use-package vterm
  :commands (vterm)
  :ensure t
  :init
  (setq vterm-term-environment-variable "eterm-color")
  :custom (vterm-install t))

(provide 'config-vterm)

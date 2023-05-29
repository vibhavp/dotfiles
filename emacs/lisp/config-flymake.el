;; -*- lexical-binding: t; -*-

(use-package flymake
  :config
  (remove-hook 'flymake-diagnostic-functions 'flymake-proc-legacy-flymake))

(provide 'config-flymake)

;; '(' and  ')' for details
(use-package dired
  :init
  (setq dired-listing-switches "-aDlh")
  :config
  (use-package dired-async)
  (use-package dired-details+)
  (use-package dired-x))

(provide 'config-dired)

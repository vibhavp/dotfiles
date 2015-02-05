;; '(' and  ')' for details 
(eval-after-load 'dired '(require 'dired-details+))
(setq dired-listing-switches "-alh")
(eval-after-load "dired-aux"
  '(require 'dired-async))
(provide 'config-dired)

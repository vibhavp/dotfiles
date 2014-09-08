(defvar config-recentf-mode-enabled nil)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

;;undo tree
(global-undo-tree-mode 1)

;; set browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "open")

(require 'multi-term)
(setq multi-term-program "/usr/bin/fish")
(provide 'config-addons)

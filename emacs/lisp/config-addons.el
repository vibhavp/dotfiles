(defvar config-recentf-mode-enabled nil)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/zsh"))

;;undo tree
(global-undo-tree-mode 1)

;; set browser
(setq browse-url-browser-function 'browse-url-chromium)
(setq backup-directory-alist '(("." . "~/.emacs.d/backup/"))
      version-control t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      backup-by-copying t)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(setq initial-buffer-choice 'eshell)
(require 'projectile)
(projectile-global-mode t)
(setq projectile-indexing-method 'alien
      projectile-enable-caching t)
(provide 'config-addons)

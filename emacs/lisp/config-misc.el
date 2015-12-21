(defvar config-recentf-mode-enabled nil)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/zsh"))

;;undo tree
(global-undo-tree-mode 1)

;; set browser
(setq browse-url-browser-function '(("i\.imgur\.com" .  browse-url-emacs)
				    ("youtube\.com"  . browse-url-youtube)
				    ("."             . browse-url-chromium)))
(setq browse-url-chromium-program "google-chrome-stable")
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
(setq gc-cons-threshold 100000000)
(require 'yasnippet)
(yas-global-mode 1)
(erc-services-mode 1)
(erc-spelling-mode 1)
(origami-mode 1)
(setq erc-server-auto-reconnect nil)
(provide 'config-misc)

(defvar config-recentf-mode-enabled nil)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/zsh"))
;; set browser
(setq browse-url-browser-function 'browse-url-chromium
      browse-url-chromium-program "google-chrome-stable")

(setq backup-directory-alist '(("." . "~/.emacs.d/backup/"))
      version-control t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      backup-by-copying t)
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file)
(setq initial-buffer-choice 'eshell)

(use-package undo-tree
  :config
  (global-undo-tree-mode 1))
(use-package projectile
  :config
  (projectile-mode t)
  :init
  (setq projectile-indexing-method 'alien
      projectile-enable-caching t
      projectile-file-exists-remote-cache-expire nil))
(use-package yasnippet
  :config
  (yas-global-mode 1))
(use-package erc
  :init
  (setq erc-server-auto-reconnect nil)
  (add-hook 'erc-mode-hook #'(lambda () (nlinum-mode -1)))
  :config
  (erc-services-mode 1)
  (erc-spelling-mode 1))

(origami-mode 1)

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package keyfreq
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1))


(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i"
      w32-get-true-file-attributes nil)

(add-hook 'kill-emacs-hook #'(lambda ()
			       (find-file "~/.emacs.d/packages.el")
			       (goto-char (point-min))
			       (erase-buffer)
			       (insert (format "%s" package-activated-list))
			       (save-buffer)))

(provide 'config-misc)

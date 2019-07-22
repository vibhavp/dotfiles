;; -*- lexical-binding: t; -*-
(defvar config-recentf-mode-enabled nil)

;; set browser
(setq browse-url-browser-function 'browse-url-chrome)

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
  :functions (undo-tree-visualize global-undo-tree-mode)
  :bind ("C-x u" . undo-tree-visualize)
  :config
  (global-undo-tree-mode 1)
  :ensure t)

;; (use-package projectile
;;   :bind (:map projectile-mode-map
;;	      ("C-c p" . projectile-command-map))
;;   :init
;;   (setq projectile-indexing-method 'alien
;;       projectile-enable-caching t
;;       projectile-file-exists-remote-cache-expire nil))
;; (projectile-mode t)
;; (use-package yasnippet
;;   :config
;;   (yas-global-mode 1))

(use-package editorconfig
  :config
  (editorconfig-mode 1)
  :ensure t)

(use-package keyfreq
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)
  :ensure t)

;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "-i"
;;       w32-get-true-file-attributes nil)


(use-package magit
  :commands (magit magit-status magit-diff magit-checkout)
  :ensure t)

(add-hook 'kill-emacs-hook #'(lambda ()
			       (find-file "~/.emacs.d/packages.el")
			       (goto-char (point-min))
			       (erase-buffer)
			       (insert (format "%s" package-activated-list))
			       (save-buffer)))
(setq load-prefer-newer t)
(use-package saveplace
  :config
  (save-place-mode 1))

(use-package proced
  :commands proced
  :init
  (setq proced-auto-update-flag t
	proced-auto-update-interval 1))

(use-package auth-source
  :init
  (setq auth-sources '("~/.authinfo.gpg")))

(use-package smartparens-config
  :ensure smartparens
  :config
  (show-smartparens-global-mode t)
  (sp-use-paredit-bindings)
  :demand t
  :hook
  ((prog-mode . turn-on-smartparens-strict-mode)
   (markdown-mode . turn-on-smartparens-strict-mode))
  :bind ("C-c C-d" . sp-delete-region))

(setq gc-cons-threshold 500000000)
(setq large-file-warning-threshold 50000000)
(setq indent-tabs-mode nil)

;; (use-package forge
;;   :after magit)

(use-package adoc-mode
  :mode ("\\.adoc\\'" . adoc-mode)
  :ensure t)

(defun config-misc-large-file-check ()
  (when (and (> (buffer-size) (* 2 1024 1024))
	     (yes-or-no-p (format
			   "Buffer is too large (%s MB), open file in Fundamental mode?"
			   (/ (buffer-size) (* 1024 1024)))))
    (buffer-disable-undo)
    (fundamental-mode)
    (setq bidi-display-reordering nil)
    (jit-lock-mode nil)
    (column-number-mode nil)))

(use-package dockerfile-mode
  :ensure t)

(use-package with-editor
  :ensure t
  :hook ((shell-mode term-exec-hook eshell-mode-hook) .
	 with-editor-export-editor))

(use-package yaml-mode
  :ensure t)

(use-package typescript-mode
  :ensure t)

(use-package markdown-mode+
  :ensure t)

(use-package racket-mode
  :ensure t)

(use-package bind-key
  :ensure t)

(use-package restart-emacs
  :ensure t)

(use-package google-translate
  :ensure t)

(use-package ix
  :ensure t)

(use-package vterm
  :custom  (vterm-install t))

(add-hook 'find-file-hook #'config-misc-large-file-check)
(provide 'config-misc)

;; -*- lexical-binding: t; -*-

;; GUI stuff

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)

;; (use-package mwheel
;;   :init
;;   (setq mouse-wheel-follow-mouse t
;; 	mouse-wheel-progressive-speed nil
;; 	mouse-wheel-scroll-amount '(1 ((shift) . 1))))
;; (setq scroll-step 1)

;; (pixel-scroll-mode t)

;; enable column-number-mode
(use-package simple
  :config (column-number-mode))

(setq display-line-numbers t)

;;font
(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))
;; Why not?
;;(add-to-list 'default-frame-alist '(font . "Comic Sans MS-9"))

;; smart-mode line

(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :hook ((after-init . doom-modeline-mode))
  :after all-the-icons
  :init
  (setq doom-modeline-height 24)
  (setq doom-modeline-icon t)
  (setq doom-modeline-major-mode-color-icon t)
  (setq doom-modeline-lsp t)
  (setq doom-modeline-github t)
  (setq doom-modeline-github-interval (* 30 60))
  (setq doom-modeline-env-version t)
  (setq doom-modeline-env-enable-python t)
  (setq doom-modeline-env-enable-ruby t)
  (setq doom-modeline-env-enable-perl t)
  (setq doom-modeline-env-enable-go t)
  (setq doom-modeline-env-enable-elixir t)
  (setq doom-modeline-env-enable-rust t)
  (setq doom-modeline-env-python-executable "python")
  (setq doom-modeline-env-ruby-executable "ruby")
  (setq doom-modeline-env-perl-executable "perl")
  (setq doom-modeline-env-go-executable "go")
  (setq doom-modeline-env-elixir-executable "iex")
  (setq doom-modeline-env-rust-executable "rustc")
  :ensure t)

;;theme
(use-package solarized
  :config
  (load-theme 'solarized-dark t)
  :ensure solarized-theme)

;;(color-theme-sanityinc-tomorrow-eighties)
;; use y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-n-p)
(setq visible-bell t)

(use-package multiple-cursors
  :bind (("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C-<" . mc/mark-all-like-this))
  :ensure t)

(use-package ace-jump-mode
  :ensure t
  :bind ("C-c SPC" . ace-jump-mode))

(windmove-default-keybindings 'shift)

(use-package emojify
  :ensure t
  :init
  (setq emojify-emoji-styles '(unicode))
  (add-hook 'after-init-hook #'global-emojify-mode)
  :defer t)

(use-package highlight-indentation
  :ensure t
  :defer t)

(when (featurep 'tab-bar)
  (use-package tab-bar
    :config
    (tab-bar-mode)))

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode 1))
(provide 'config-gui)

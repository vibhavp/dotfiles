;; -*- lexical-binding: t; -*-
(defvar config-recentf-mode-enabled nil)

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)

;; set browser

(if (memq window-system '(mac ns))
    (progn
      (setq browse-url-browser-function 'browse-url-chrome)
      (setq browse-url-chrome-program "open")
      (setq browse-url-chrome-arguments '("-n" "-a" "Google Chrome" "--args")))
  (setq browse-url-browser-function 'browse-url-xdg-open))


(setq backup-directory-alist '(("." . "~/.emacs.d/backup/"))
      version-control t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      backup-by-copying t)

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file)

(use-package undo-tree
  :functions (undo-tree-visualize global-undo-tree-mode)
  :init
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo"))
	undo-tree-visualizer-diff nil
	undo-tree-visualizer-timestamps t
	undo-tree-enable-undo-in-region t)
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


;; (add-hook 'kill-emacs-hook #'(lambda ()
;;			       (find-file "~/.emacs.d/packages.el")
;;			       (goto-char (point-min))
;;			       (erase-buffer)
;;			       (insert (format "%s" package-activated-list))
;;			       (save-buffer)))

(setq load-prefer-newer t)
(use-package saveplace
  :config
  (save-place-mode 1)
  :demand t)

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
  :bind ("C-c d" . sp-delete-region))

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
  :ensure t
  :mode ("Dockerfile\\(?:\\..*\\)?\\'" . dockerfile-mode))

(use-package with-editor
  :ensure t
  :demand t
  :hook ((shell-mode term-exec eshell-mode vterm-mode) .
	 with-editor-export-editor))

;; (use-package markdown-mode+
;;   :ensure t)

(use-package racket-mode
  :ensure t
  :mode ("\\.rkt[dl]?\\'" . racket-mode))

(use-package restart-emacs
  :ensure t
  :commands (restart-emacs))

;; (use-package google-translate
;;   :defer t
;;   :ensure t)

(use-package ix
  :commands (ix)
  :ensure t)

(use-package ack
  :ensure t
  :commands (ack))

(add-hook 'find-file-hook #'config-misc-large-file-check)

(use-package dotenv-mode
  :ensure t)

(use-package protobuf-mode
  :hook (protobuf-mode . (lambda ()
			   (add-hook 'before-save-hook #'whitespace-cleanup nil t)
			   (add-hook 'before-save-hook #'clang-format+-before-save nil t)))
  :ensure t
  :after clang-format+)

(run-with-idle-timer 20 t #'garbage-collect)

(setq mac-command-modifier 'meta
      default-directory "~/"
      read-process-output-max (* 1024 1024))

(use-package vc-hooks
  :config
  (require 'tramp)
  (setq vc-ignore-dir-regexp
		(format "\\(%s\\)\\|\\(%s\\)"
			vc-ignore-dir-regexp
			tramp-file-name-regexp))
  :demand t)

(use-package json-navigator
  :commands (json-navigator-navigate-region json-navigator-navigate-after-point)
  :ensure t)

(use-package caddyfile-mode
  :ensure t)

(use-package realgud
  :ensure t
  :defer t)

(use-package realgud-lldb
    :ensure t
    :defer t)

(use-package clang-format+
  :ensure t)

(use-package exec-path-from-shell
  :init
  (setq exec-path-from-shell-arguments '("-l")
	exec-path-from-shell-shell-name "/bin/zsh")
  :config
  (when (memq window-system '(mac ns x pgtk))
    (dolist (var '("LANG" "LC_CTYPE" "LC_ALL" "GOAMD64"
		 "GO111MODULE" "GOPRIVATE" "GOPROXY" "GONOSUMDB" "CASK_EMACS"
		 "LIBRARY_PATH" "LD_LIBRARY_PATH" "SSH_AUTH_SOCK" "SSH_AGENT_PID"
		 "GPG_AGENT_INFO" "KUBECONFIG" "GVM_ROOT" "VDPAU_DRIVER" "XDG_SESSION_TYPE" "XDG_RUNTIME_DIR" "XDG_DATA_DIRS" "XDG_SESSION_DESKTOP" "XDG_CURRENT_DESKTOP" "XDG_SESSION_CLASS" "DEBUG_SESSION_BUS_ADDRESS" "WAYLAND_DISPLAY" "XAUTHORITY"))
      (add-to-list 'exec-path-from-shell-variables var))

    (exec-path-from-shell-initialize))
  :ensure t
  :demand t
  :after with-editor)

(use-package f
  :ensure t
  :demand t)

(provide 'config-misc)

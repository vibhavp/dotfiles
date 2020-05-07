(setq gc-cons-percentage 20)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.milkbox.net/packages/"))

;; (let ((default-directory "~/.emacs.d/lisp/"))
;;   (normal-top-level-add-subdirs-to-load-path))

(eval-when-compile
  (require 'use-package))
(setq use-package-compute-statistics t)
(use-package benchmark-init
  :ensure t
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))
(require 'bind-key)

;; (use-package benchmark-init
;;   :ensure t
;;   :config
;;   (add-hook 'after-init-hook #'benchmark-init/deactivate))

(require 'config-misc)
(require 'config-functions)
(require 'config-gui)
(require 'config-keybind)
(require 'config-latex)
(require 'config-lisp)
(require 'config-ivy)
(require 'config-skeleton)
(require 'config-variables)
(require 'config-eshell)
(require 'config-dired)
(require 'config-ispell)
(require 'config-irc)
(require 'config-elfeed)
(require 'config-go)
(require 'config-rust)
(require 'config-webdev)
(require 'config-js)
(require 'config-lsp)
(require 'config-c)
(require 'config-yaml)
(require 'config-kotlin)
(require 'config-java)
(require 'config-org)
(require 'config-magit)

(setenv "GOPATH" (expand-file-name "~/go/"))
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
(setq gc-cons-percentage 5)

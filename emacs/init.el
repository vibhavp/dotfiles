
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.milkbox.net/packages/"))

(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'use-package)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(use-package benchmark-init
  :config
  (add-hook 'after-init-hook #'benchmark-init/deactivate))

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
(require 'config-gnus)
(require 'config-elfeed)
(require 'config-go)
(require 'config-twitch)
(require 'config-rust)
(require 'config-webdev)
(require 'config-js)
(require 'config-lsp)
(require 'config-c)

(setenv "GOPATH" (expand-file-name "~/go/"))
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)

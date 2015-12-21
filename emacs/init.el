(setq exec-path (append exec-path (list (expand-file-name  "~/go/bin") (expand-file-name "~/bin"))))
(setenv "GOPATH" (expand-file-name "~/go/"))
(setenv "PATH" (concat (getenv "PATH") ":" (expand-file-name "~/go/bin")))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'load-path "~/.emacs.d/lisp/")
(package-initialize)
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
(require 'config-misc)
(require 'config-c)
(require 'config-functions)
(require 'config-gui)
(require 'config-keybind)
(require 'config-latex)
(require 'config-lisp)
(require 'config-ido)
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
(put 'erase-buffer 'disabled nil)

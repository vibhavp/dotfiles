;; (setenv "LIBRARY_PATH" "/usr/local/opt/gcc/lib/gcc/10")
;; (profiler-start 'cpu)
(require 'comp)
(defvar native-comp-deferred-compilation-deny-list native-comp-jit-compilation-deny-list)
(defvar bootstrap-version)

(setq  package-native-compile t
       native-comp-compiler-options `("-frecord-gcc-switches"
 				     "-mtune=native"
 				     "-march=skylake"))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 27)
  (package-initialize))

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file)

(eval-when-compile (require 'use-package))

(setq use-package-compute-statistics t)

;; (use-package benchmark-init
;;   :ensure t
;;   :config
;;   ;; To disable collection of benchmark data after init is done.
;;   (add-hook 'after-init-hook 'benchmark-init/deactivate))

(defvar config--gc-cons-percentage 0.3
  "Configured value for gc-cons-percentage")
(setq gc-cons-percentage config--gc-cons-percentage)

(let ((gc-cons-percentage 1.0))
  (require 'bind-key)
  (require 'config-misc)
  (require 'config-functions)
  (require 'config-gui)
  (require 'config-keybind)
  (require 'config-latex)
  (require 'config-lisp)
  (require 'config-helm)
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
  (require 'config-python)
  (require 'config-docker)
  (require 'config-bash)
  (require 'config-vterm)
  (require 'config-tree-sitter)
  (require 'config-flymake)
  (require 'config-gud)
  (require 'config-llvm)
  (require 'config-tramp))
(garbage-collect)

;; (setenv "LIBRARY_PATH" "/usr/local/opt/gcc/lib/gcc/10")

(setq emacs-memory-ballast (make-vector 50000000 0))
(setq gc-cons-threshold most-positive-fixnum)

(advice-add 'libgit-load :before
	    (lambda () (setq libgit--module-file
			     (expand-file-name
			      (concat "libegit2" (if (and (string-equal system-type "darwin")
							  (> emacs-major-version 27))
						     ".so"
						   module-file-suffix))
			      libgit--build-dir))))

 (require 'comp nil t)
 (setq native-comp-deferred-compilation t
       package-native-compile t
       native-comp-compiler-options `("-frecord-gcc-switches"
 				     "-mtune=native"
 				     "-march=skylake"))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; (let ((default-directory "~/.emacs.d/lisp/"))
;;   (normal-top-level-add-subdirs-to-load-path))

(eval-when-compile
  (require 'use-package))

(setq use-package-compute-statistics t)

;; (use-package benchmark-init
;;   :ensure t
;;   :config
;;   ;; To disable collection of benchmark data after init is done.
;;   (add-hook 'after-init-hook 'benchmark-init/deactivate))

(require 'bind-key)

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
(require 'config-python)
(require 'config-docker)
(require 'config-bash)
(require 'config-vterm)
(require 'config-tree-sitter)

(setq gc-cons-threshold 100000000)

;; -*- lexical-binding: t; -*-

(use-package llvm-mode
  :load-path "~/src/llvm-main/llvm/utils/emacs/")

(use-package llvm-mir-mode
  :load-path "~/src/llvm-main/llvm/utils/emacs/"
  :after (llvm-mode))

(use-package tablegen-mode
  :load-path "~/src/llvm-main/llvm/utils/emacs/"
  :demand t)

(use-package mlir-mode
  :load-path "~/src/llvm-main/mlir/utils/emacs/")

(use-package mlir-lsp-client
  :load-path "~/src/llvm-main/mlir/utils/emacs/")

(use-package lsp-tablegen
  :load-path "~/src/llvm-main/mlir/utils/emacs/"
  :demand t
  :init
  (setq lsp-tablegen-server-executable (expand-file-name "~/llvm-mlir-install/bin/tblgen-lsp-server")
	lsp-tablegen-tablegen-extra-dir (expand-file-name "~/llvm-mlir-install/include"))
  :hook ((tablegen-mode . lsp)))

(provide 'config-llvm)

;; -*- lexical-binding: t; -*-

;; (Emacs-lisp)
(show-paren-mode 1)

;;Enable paredit
;; (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)

;; (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;; (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;; (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;; (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;; (add-hook 'lisp-mode-hook #'highlight-indentation-mode)
;; (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;; (add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; (autoload 'scheme-smart-complete "scheme-complete" nil t)
;; (autoload 'scheme-get-current-symbol-info "scheme-complete" nil t)

(use-package auto-compile
  :config
  (auto-compile-on-save-mode)
  :ensure t)

(use-package eldoc
  :hook ((emacs-lisp-mode . eldoc-mode)))

(provide 'config-lisp)

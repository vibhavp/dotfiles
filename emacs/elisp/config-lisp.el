;; (Emacs-lisp)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(show-paren-mode)

;;Enable paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;;Enable auto-complete
;;(add-to-list 'load-path "/home/vibhavp/.emacs.d/auto-complete")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "/home/vibhavp/.emacs.d/auto-complete/ac-dict")
;;(ac-config-default)

;;load SLIME
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

;; auto compile on save
(require 'auto-compile)
(auto-compile-on-save-mode)

(provide 'config-lisp)
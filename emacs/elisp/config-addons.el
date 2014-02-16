;;(add-to-list 'load-path "/opt/sage/local/share/emacs")
;;(require 'sage "sage")
;;(setq sage-command "/opt/sage/sage")

;; If you want sage-view to typeset all your output and have plot()
;; commands inline, uncomment the following line and configure sage-view:
;;(require 'sage-view "sage-view")
;;(add-hook 'sage-startup-after-prompt-hook 'sage-view)
;; You can use commands like
;; (add-hook 'sage-startup-after-prompt-hook 'sage-view-disable-inline-output)
;; (add-hook 'sage-startup-after-prompt-hook 'sage-view-disable-inline-plots)
;; to enable some combination of features.  Using sage-view requires a
;; working LaTeX installation with the preview package.
;; Also consider running (customize-group 'sage) to see more options.

;; add package repos
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)


;; smart-mode line
(setq sml/theme 'light)
(require 'smart-mode-line)
(sml/setup)

(require 'erc)
(add-to-list 'erc-modules 'notifications)

;; makes tramp work with zsh
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

;; enable recentf
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;undo tree
(global-undo-tree-mode t)

;;
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;;(require 'xkcd)

(provide 'config-addons)

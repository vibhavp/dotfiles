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

(defvar config-recentf-mode-enabled nil)
;; smart-mode line
(setq sml/theme 'light)
(sml/setup)

;;Enable notifications, truncate-mode and make ERC interpret
;;mIRC colour coding
(require 'erc)
(add-to-list 'erc-modules 'notifications)
(erc-truncate-mode 1)
(erc-spelling-mode 1)
(setq erc-interpret-mirc-color t)

(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

;; enable recentf
(defun config-recentf-mode-enable ()
  (unless config-recentf-mode-enabled
    (recentf-mode 1)
    (setq recentf-max-menu-items 25)
    (setq config-recentf-mode-enabled t)))

(global-set-key (kbd "C-x C-r") '(lambda ()
				   (interactive)
				   (config-recentf-mode-enable)
				   (recentf-open-files)))
;;undo tree
(global-undo-tree-mode 1)

(require 'emms-setup)
(emms-standard)
(emms-default-players)

(provide 'config-addons)
;; Enable search
(add-to-list 'load-path "/opt/sage/local/share/emacs/site-lisp/sage-mode")
(require 'sage "sage")
(setq sage-command "/opt/sage/sage")
;; If you want sage-view to typeset all your output and have plot()
;; commands inline, uncomment the following line and configure sage-view:
(require 'sage-view "sage-view")
(add-hook 'sage-startup-after-prompt-hook 'sage-view)
;; You can use commands like
(add-hook 'sage-startup-after-prompt-hook 'sage-view-enable-inline-output)
(add-hook 'sage-startup-after-prompt-hook 'sage-view-enable-inline-plots)
;; to enable some combination of features.  Using sage-view requires a
;; working LaTeX installation with the preview package.
;; Also consider running (customize-group 'sage) to see more options.

(defvar config-recentf-mode-enabled nil)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

;;undo tree
(global-undo-tree-mode 1)

;; set browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "conkeror")

(provide 'config-addons)

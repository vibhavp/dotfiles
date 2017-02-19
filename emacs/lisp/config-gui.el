;; GUI stuff

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)

;; makes crolling a bit less jumpy.
(setq mouse-wheel-follow-mouse t ;; scroll window under mouse
      scroll-step 1 ;; keyboard scroll one line at a time
      mouse-wheel-progressive-speed nil ;; don't accelerate scrollin
      mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

;; enable column-number-mode
(column-number-mode)

;; nlinum mode
(global-nlinum-mode)

;;font
(add-to-list 'default-frame-alist '(font . "Inconsolata-10"))
;; Why not?
;;(add-to-list 'default-frame-alist '(font . "Comic Sans MS-9"))

;; smart-mode line
(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t)
  :config
  (sml/setup)
  (sml/apply-theme 'respectful))

;;theme
(load-theme 'solarized-dark t)
;;(color-theme-sanityinc-tomorrow-eighties)
;; use y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-n-p)

(use-package printing
  :config
  (setq ps-print-color-p 'black-white
	visible-bell t))
;;hide some minor modes
(use-package rich-minority
  :init
  (setq rm-blacklist (append rm-blacklist '(" EditorConfig" " yas" " Undo-Tree"
					    " ARev" " ElDoc")))
  :config
  (rich-minority-mode 1))
(provide 'config-gui)

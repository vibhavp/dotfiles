;; GUI stuff

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)

;; makes crolling a bit less jumpy.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; enable column-number-mode
(column-number-mode)

;; nlinum mode
;;(global-nlinum-mode)

;;font
(add-to-list 'default-frame-alist '(font . "Inconsolata-9"))
;; Why not?
;;(add-to-list 'default-frame-alist '(font . "Comic Sans MS-9"))

;; smart-mode line
(setq sml/no-confirm-load-theme t)
(sml/setup)
(sml/apply-theme 'respectful)

;;theme
(load-theme 'solarized-dark t)
;; use y or n instead of yes or no
(fset 'yes-or-no-p 'y-or-n-p)
(require 'printing)
(setq ps-print-color-p 'black-white)
(provide 'config-gui)

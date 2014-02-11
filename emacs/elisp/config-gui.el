;; GUI stuff

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)

;; enable column-number-mode
(column-number-mode)

;; nlinum mode
(global-nlinum-mode)

;; show time on modeline
(display-time-mode)

;;font
(add-to-list 'default-frame-alist '(font . "Inconsolata-8" ))
;; Why not?
;;(add-to-list 'default-frame-alist '(font . "Comic Sans MS-9"))

;;theme
(require 'ir-black-theme)

(provide 'config-gui)

;; ido and friends
;; install necessary packages

(package-install 'ido-ubiquitous)
(package-install 'ido-at-point)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; smex
(require 'smex)
(smex-initialize)
;; smex keybindings

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; use ido everywhere
(ido-ubiquitous 1)

;; Use completion at point with ido
(ido-at-point-mode)

;; Replacement for Buffer-menu
(setq ibuffer-sorting-mode 'alphabetic)
(setq ibuffer-display-summary nil)
(setq ibuffer-expert t)

(global-set-key (kbd "C-x C-b") 'ibuffer)

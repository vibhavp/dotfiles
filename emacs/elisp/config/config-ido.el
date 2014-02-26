;; ido and friends
(require 'flx-ido)
(setq ido-enable-flex-matching t
      ido-everywhere t
      ido-use-filename-at-point 'guess
      ido-create-new-buffer 'always)
(ido-mode 1)
;; use ido everywhere
(ido-ubiquitous 1)
;; Use completion at point with ido
(ido-at-point-mode)
;; smarter flex matching
(flx-ido-mode 1)
(setq ido-use-faces nil)

;; smex
(require 'smex)
(smex-initialize)
;; smex keybindings

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Replacement for Buffer-menu
(setq ibuffer-sorting-mode 'alphabetic)
(setq ibuffer-display-summary nil)
(setq ibuffer-expert t)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'config-ido)

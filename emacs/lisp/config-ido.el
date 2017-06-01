;; ido and friends
(use-package ido
  :init
  (setq ido-enable-flex-matching t
	ido-everywhere t
	ido-use-filename-at-point 'guess
	ido-create-new-buffer 'always
	ido-use-faces t)
  :config
  (ido-mode 1)
  (ido-everywhere 1)
  (use-package ido-ubiquitous
    :config (ido-ubiquitous-mode 1))
  (ido-at-point-mode 1)
  (use-package flx-ido
    :config
    (flx-ido-mode 1))
  (use-package smex
    :config
    (smex-initialize)
    :bind (("M-x" . smex)
	   ("M-X" . smex-major-mode-commands)
	   ("C-x M-x" . execute-extended-command))))

;; Replacement for Buffer-menu

(use-package ibuffer
  :init
  (setq ibuffer-sorting-mode 'alphabetic
	ibuffer-display-summary nil
	ibuffer-expert t))

(provide 'config-ido)

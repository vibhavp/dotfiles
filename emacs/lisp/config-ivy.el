(use-package flx
  :ensure t)

(use-package ivy
  :bind ("C-c C-r" . ivy-resume)
  :ensure t
  :init
  (setq ivy-re-builders-alist
	'((swiper . ivy--regex-plus)
	  (t . ivy--regex-fuzzy))
	ivy-use-virtual-buffers t
	enable-recursive-minibuffers t
	ivy-count-format "%d/%d ")
  :config
  (ivy-mode 1)
  :after flx)

(use-package swiper
  :bind ("C-s" . swiper)
  :after ivy
  :commands swiper
  :ensure t)

(use-package counsel
  :config (counsel-mode 1)
  :ensure t)

(use-package ivy-rich
  :init
  (setq ivy-format-function #'ivy-format-function-line)
  :config (ivy-rich-mode 1)
  :ensure t)

(provide 'config-ivy)

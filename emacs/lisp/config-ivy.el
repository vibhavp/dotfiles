;; -*- lexical-binding: t; -*-

(use-package flx
  :ensure flx)

(use-package ivy
  :bind (("C-c C-r" . ivy-resume))
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
  :bind (("C-s" . swiper))
  :after ivy
  :commands swiper
  :ensure t)

(use-package smex
  :ensure t)

(use-package counsel
  :config (counsel-mode 1)
  :after smex
  :ensure t)

(use-package ivy-rich
  :init
  (setq ivy-format-function #'ivy-format-function-line)
  :config (ivy-rich-mode 1)
  :ensure t)

(use-package all-the-icons-ivy
  :ensure t
  :config (all-the-icons-ivy-setup))

(provide 'config-ivy)

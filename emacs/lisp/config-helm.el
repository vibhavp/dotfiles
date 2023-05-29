;; -*- lexical-binding: t; -*-

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("C-x r b" . helm-filtered-bookmarks)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-mini)
	 ("M-y" . helm-show-kill-ring))
  :init
  (setq helm-completion-style 'helm-fuzzy
	helm-M-x-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t
	helm-imenu-fuzzy-match t)
  :config
  (helm-mode 1)
  (helm-autoresize-mode 1)
  :demand t)

(use-package helm-swoop
  :ensure t
  :init
  (setq helm-swoop-use-fuzzy-match t)
  :bind (:map isearch-mode-map
	      ("M-i" . helm-swoop-from-isearch)
	      :map helm-swoop-map
	      ("M-i" . helm-multi-swoop-all-from-helm-swoop))
  :after (helm))

(provide 'config-helm)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
(package-refresh-contents)
(defun install-package (package)
  (unless (package-installed-p package)
    (package-install package)))
(install-package 'auctex)
(install-package 'auto-compile)
(install-package 'magit)
(install-package 'paredit)
(install-package 'xkcd)
(install-package 'smart-mode-line)
(install-package 'undo-tree)
(install-package 'ido-ubiquitous)
(install-package 'ido-at-point)
(install-package 'smex)
(install-package 'nlinum)
(install-package 'gist)
(install-package 'iedit)
(install-package 'multiple-cursors)
(install-package 'solarized-theme)
(install-package 'twittering-mode)
(install-package 'ix)
(install-package 'dired-details+)
(install-package 'flx-ido)
(install-package 'all)
(install-package 'google-translate)
(install-package 'google-c-style)
(install-package 'multi-term)
(install-package 'haskell-mode)
(install-package 'twittering-mode)
(install-package 'elfeed)
(install-package 'async)
(install-package 'company-irony)
(save-buffers-kill-emacs)

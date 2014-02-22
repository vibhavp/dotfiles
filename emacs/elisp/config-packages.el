;; add package repos
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
;; install packages
(package-install 'ace-jump-mode)
(package-install 'auctex)
(package-install 'auto-compile)
(package-install 'magit)
(package-install 'ir-black-theme)
(package-install 'paredit)
(package-install 'slime)
(package-install 'xkcd)
(package-install 'smart-mode-line)
(package-install 'latex-pretty-symbols)
(package-install 'undo-tree)
(package-install 'ido-ubiquitous)
(package-install 'ido-at-point)
(package-install 'smex)
(package-install 'nlinum)
(package-install 'gist)
(package-install 'iedit)
(package-install 'multiple-cursors)
(package-install 'clues-theme)
(package-install 'ix)
(package-install 'dired-details+)
(package-install 'emms)
(package-install 'god-mode)
(package-install 'flx-ido)
(package-install 'scheme-complete)

(provide 'config-packages)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
(package-refresh-contents)

(package-install 'ace-jump-mode)
(package-install 'auctex)
(package-install 'auto-compile)
(package-install 'magit)
(package-install 'ir-black-theme)
(package-install 'paredit)
(package-install 'slime)
(package-install 'xkcd)
(package-install  'smart-mode-line)
(package-install 'ido-ubiquitous)
(package-install 'ido-at-point)
(package-install 'smex)
(package-install 'nlinum)

(save-buffers-kill-terminal)

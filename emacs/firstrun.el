(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)
(package-install 'use-package)
(save-buffers-kill-emacs)

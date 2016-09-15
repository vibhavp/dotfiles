(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
(package-refresh-contents)
(setq dotfiles-package-list
      '(ace-jump-mode
	ack
	all
	auctex
	auto-compile
	color-theme-sanityinc-tomorrow
	company-irony
	company
	dired-details+
	dired-details
	dtrt-indent
	editorconfig
	elfeed
	erc-social-graph
	erc-twitch
	exec-path-from-shell
	fireplace
	flx-ido
	flx
	flycheck-rust
	flycheck
	gist
	gh
	go-complete
	go-playground
	google-c-style
	google-translate
	gotest
	go-mode
	f
	highlight-tail
	ido-at-point
	ido-ubiquitous
	ido-completing-read+
	iedit
	irony
	ix
	grapnel
	js2-mode
	keyfreq
	logito
	magit
	git-commit
	magit-popup
	markdown-mode+
	markdown-mode
	monokai-theme
	multi-term
	multiple-cursors
	nlinum
	origami
	packed
	paredit
	pcache
	projectile
	pkg-info
	epl
	racer
	request
	rust-mode
	s
	smart-mode-line
	rich-minority
	smex
	solarized-theme
	sqlplus
	twittering-mode
	undo-tree
	with-editor
	dash
	async
	xkcd
	yaml-mode
	yasnippet
	undo-tree
	projectile
	yasnippet
	origami
	keyfreq
	web-mode
	js2-mode))
(dolist (package dotfiles-package-list)
  (unless (package-installed-p package)
    (package-install package)))
(save-buffers-kill-emacs)

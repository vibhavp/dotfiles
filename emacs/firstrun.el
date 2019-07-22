(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
(package-refresh-contents)
(setq dotfiles-package-list
      '(academic-phrases ace-jump-mode ack all auctex auto-compile ccls color-theme-sanityinc-tomorrow company-irony company-lsp company deferred  dockerfile-mode dtrt-indent ecb editorconfig elfeed erc-social-graph erc-twitch exec-path-from-shell fireplace flx-ido flx flycheck-rust flycheck ghub gist gh go-complete go-playground google-c-style google-translate gotest go-mode graphql helm helm-core ido-at-point ido-completing-read+ iedit irony ivy ix grapnel js2-mode json-mode json-reformat json-snatcher keyfreq logito lsp-java lsp-ui lsp-mode dash-functional magit git-commit magit-popup markdown-mode+ markdown-mode marshal ht memoize monokai-theme multi-term multiple-cursors nlinum origami package-lint packed paredit pcache popup projectile pkg-info epl racer pos-tip f racket-mode request rust-mode s smart-mode-line rich-minority smex solarized-theme dash spinner steam treepy twittering-mode typescript-mode undo-tree use-package bind-key web-mode with-editor async xkcd yaml-mode yasnippet))
(dolist (package dotfiles-package-list)
  (unless (package-installed-p package)
    (package-install package)))
(save-buffers-kill-emacs)

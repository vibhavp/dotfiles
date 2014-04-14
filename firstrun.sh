#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
mkdir $(pwd)/.emacs.d/elisp
mkdir ~/.emacs.d/elisp/lisp
ln -sf $(pwd)/emacs/elisp/config ~/.emacs.d/elisp/config
ln -sf $(pwd)/emacs/init.el ~/.emacs.d/init.el

ln -sf $(pwd)/scripts/ ~/scripts
ln -sf $(pwd)/dunstrc ~/.dunstrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/youtube-dl.conf ~/.youtube-dl.conf

ln -sf $(pwd)/x11/xinitrc ~/.xinitrc
ln -sf $(pwd)/x11/xprofile ~/.xprofile
ln -sf $(pwd)/x11/Xmodmap ~/.Xmodmap
chmod +x $(pwd)/x11/xprofile

chmod +x $(pwd)/scripts/emclient
ln -sf $(pwd)/linopenrc ~/.linopenrc
sudo ln -sf $(pwd)/scripts/emclient /usr/bin/emclient

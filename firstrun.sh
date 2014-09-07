#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
mkdir ~/.emacs.d/elisp
mkdir ~/.emacs.d/elisp/lisp
ln -sf $(pwd)/emacs/elisp/config ~/.emacs.d/elisp/config
ln -sf $(pwd)/emacs/init.el ~/.emacs.d/init.el

ln -sf $(pwd)/dunstrc ~/.dunstrc
ln -sf $(pwd)/config.fish ~/.config/fish/config.fish
ln -sf $(pwd)/youtube-dl.conf ~/.youtube-dl.conf
ln -sf $(pwd)/linopenrc ~/.linopenrc

ln -sf $(pwd)/x11/xinitrc ~/.xinitrc
ln -sf $(pwd)/x11/xprofile ~/.xprofile
ln -sf $(pwd)/x11/Xmodmap ~/.Xmodmap
ln -sf $(pwd)/x11/Xresources ~/.Xresources
chmod +x $(pwd)/x11/xprofile

chmod +x $(pwd)/scripts/*

#!/bin/sh

emacs -l $(dirname $0)/emacs/firstrun.el
mkdir ~/.emacs.d/elisp
mkdir ~/.emacs.d/elisp/lisp
ln -sf $(dirname $0)/emacs/elisp/config ~/.emacs.d/elisp/config
ln -sf $(dirname $0)/emacs/init.el ~/.emacs.d/init.el

ln -sf $(dirname $0)/dunstrc ~/.dunstrc
ln -sf $(dirname $0)/config.fish ~/.config/fish/config.fish
ln -sf $(dirname $0)/youtube-dl.conf ~/.youtube-dl.conf
ln -sf $(dirname $0)/linopenrc ~/.linopenrc

ln -sf $(dirname $0)/x11/xinitrc ~/.xinitrc
ln -sf $(dirname $0)/x11/xprofile ~/.xprofile
ln -sf $(dirname $0)/x11/Xmodmap ~/.Xmodmap
ln -sf $(dirname $0)/x11/Xresources ~/.Xresources
chmod +x $(dirname $0)/x11/xprofile

ln -sf $(dirname $0)/dwb/custom_keys ~/.config/dwb/default/custom_keys
ln -sf $(dirname $0)/dwb/settings ~/.config/dwb/settings

chmod +x $(dirname $0)/scripts/*

exec $(dirname $0)/scripts/update-scripts

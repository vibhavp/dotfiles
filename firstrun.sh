#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
mkdir $(pwd)/.emacs.d/elisp
mkdir ~/.emacs.d/elisp/lisp
ln -sf $(pwd)/emacs/elisp/config ~/.emacs.d/elisp/config
ln -sf $(pwd)/emacs/init.el ~/.emacs.d/init.el

ln -sf $(pwd)/scripts/ ~/scripts
ln -sf $(pwd)/dunstrc ~/.dunstrc
ln -sf $(pwd)/xinitrc ~/.xinitrc
ln -sf $(pwd)/xprofile ~/.xprofile
chmod +x $(pwd)/xprofile
chmod +x $(pwd)/scripts/emclient
ln -sf $(pwd)/linopenrc ~/.linopenrc
sudo ln -sf $(pwd)/scripts/emclient /usr/bin/emclient

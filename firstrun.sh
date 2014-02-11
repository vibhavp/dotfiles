#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
ln -s ./emacs/elisp ~/.emacs.d/elisp
ln -s ./emacs/init.el ~/.emacs.d/init.el

ln -s ./dunstrc ~/.dunstrc

ln -s ./xinitrc ~/.xinitrc

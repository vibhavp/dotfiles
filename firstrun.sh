#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
ln -s $(pwd)/emacs/elisp ~/.emacs.d/elisp
ln -s $(pwd)/emacs/init.el ~/.emacs.d/init.el

ln -s $(pwd)dunstrc ~/.dunstrc

ln -s $(pwd)xinitrc ~/.xinitrc

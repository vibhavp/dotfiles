#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
mkdir ~/.emacs.d/elisp
ln -s $(pwd)/emacs/elisp/config ~/.emacs.d/elisp/config
ln -s $(pwd)/emacs/init.el ~/.emacs.d/init.el

ln -s $(pwd)dunstrc ~/.dunstrc

ln -s $(pwd)xinitrc ~/.xinitrc

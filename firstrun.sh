#!/bin/sh

emacs -l ./emacs/firstrun.el
mkdir ~/.emacs.d/elisp
mkdir ~/.emacs.d/elisp/lisp
ln -s ./emacs/elisp/config ~/.emacs.d/elisp/config
ln -s ./emacs/init.el ~/.emacs.d/init.el

ln -s ./scripts/ ~/scripts
ln -s ./dunstrc ~/.dunstrc
ln -s ./xinitrc ~/.xinitrc
ln -s ./xprofile ~/.xprofile
chmod +x ~/.xprofile
ln -s ./linopenrc ~/.linopenrc

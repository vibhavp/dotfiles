#!/bin/sh

emacs --batch -l $(pwd)/emacs/firstrun.el
ln -s ./emacs/elisp ~/.emacs.d/elisp
ln -s ./emacs/init.el ~/.emacs.d/init.el
#!/bin/sh

emacs -l $(pwd)/emacs/firstrun.el
if [! -d ~/.emacs.d/lisp ]; then
    ln -sf $(pwd)/emacs/lisp ~/.emacs.d/lisp
    ln -sf $(pwd)/emacs/init.el ~/.emacs.d/init.el
fi

ln -sf $(pwd)/dunstrc ~/.dunstrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/youtube-dl.conf ~/.youtube-dl.conf
ln -sf $(pwd)/linopenrc ~/.linopenrc
ln -sf $(pwd)/livestreamerrc ~/.livestreamerrc

ln -sf $(pwd)/x11/xinitrc ~/.xinitrc
ln -sf $(pwd)/x11/xprofile ~/.xprofile
ln -sf $(pwd)/x11/Xmodmap ~/.Xmodmap
ln -sf $(pwd)/x11/Xresources ~/.Xresources
ln -sf $(pwd)/mime.conf ~/.config/mimi/mime.conf
ln -sf $(pwd)/systemd/emacs.service ~/.config/systemd/user/emacs.service
ln -sf $(pwd)/systemd/offlineimap.service ~/.config/systemd/user/offlineimap.service
/usr/bin/systemctl --user enable emacs
/usr/bin/systemctl --user enable offlineimap

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vibhavp/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall
prompt fade red

#export PATH=/usr/local/texlive/2014/bin/x86_64-linux:/usr/lib/ccache/bin/:$PATH
export EDITOR="emacsclient -c"
export PATH=$PATH:/sbin/:/usr/sbin/:~/go/bin:~/bin/:~/npm-global/bin/
export GOPATH=~/go

export WINEARCH=win32
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

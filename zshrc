fpath+=~/.zfunc
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

# added by travis gem
[ -f /home/vibhavp/.travis/travis.sh ] && source /home/vibhavp/.travis/travis.sh
source /usr/share/nvm/init-nvm.sh

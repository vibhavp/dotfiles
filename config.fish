set -x LC_ALL en_GB.UTF-8
set -x LC_CTYPE en_GB.UTF-8
set -gx INFOPATH /usr/local/texlive/2014/texmf-dist/doc/info $INFOPATH
set -gx MANPATH /usr/local/texlive/2014/texmf-dist/doc/man $MANPATH
set -gx PATH /home/vibhavp/dotfiles/scripts/ /usr/lib/ccache/bin/ /usr/local/sbin /usr/local/bin /usr/bin /usr/bin/core_perl/ /usr/local/texlive/2014/bin/i386-linux /bin/

function fish_title
  true
end

set -x LC_ALL en_GB.UTF-8
set -x LC_CTYPE en_GB.UTF-8
set -gx INFOPATH /usr/local/texlive/2014/texmf-dist/doc/info $INFOPATH
set -gx MANPATH /usr/local/texlive/2014/texmf-dist/doc/man /usr/share/man/man7/ $MANPATH
set -gx PATH /home/vibhavp/dotfiles/scripts/ /usr/lib/ccache/bin/ /usr/local/sbin /usr/local/bin /usr/bin /usr/bin/core_perl/ /usr/local/texlive/2014/bin/i386-linux /bin/ /sbin/ /usr/sbin /home/vibhavp/build/barrier_breaker/staging_dir/toolchain-mipsel_mips32_gcc-4.8-linaro_uClibc-0.9.33.2/bin
set -gx STAGING_DIR /home/vibhavp/build/barrier_breaker/staging_dir

alias emclient "emacsclient -c"
function fish_title
  true
end


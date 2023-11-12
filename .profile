# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

EDITOR=/usr/local/bin/vim
LS_COLORS='rs=0:di=35:ln=32:or=01;05;31:ex=33:su=37;41:sg=37;41:'
MANPAGER='less -X'
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin

export EDITOR HOME LS_COLORS MANPAGER PATH TERM

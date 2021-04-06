# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

LS_COLORS='rs=0:di=35:ln=32:or=01;05;31:ex=33:su=37;41:sg=37;41:'
PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM PS1 LS_COLORS

alias ls='/usr/local/bin/gls --color=auto -lp --group-directories-first'
alias vi='vim'

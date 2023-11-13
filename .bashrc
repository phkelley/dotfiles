# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

shopt -s histappend
shopt -s nocaseglob
shopt -s cdspell

HISTCONTROL=ignoredups
HISTSIZE=1000000
HISTFILESIZE=$HISTSIZE

PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

alias sudo='doas'

alias ls='gls --color=auto -lp --group-directories-first'
alias vi='vim'

alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias up7='cd ../../../../../../..'

resize() {
  old=$(stty -g)
  stty -echo
  printf '\033[18t'
  IFS=';' read -r -d t _ rows cols _
  stty "$old"
  stty cols "$cols" rows "$rows"
  unset old cols rows
}

# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
stty -ixon
shopt -s autocd

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# PS1='[\u@\h \W]\$ '
PS1='\[$(tput setaf 6)\]\[$(tput bold)\]＞ \[$(tput sgr0)\]'

alias ls='ls --color=auto'
alias starwars='telnet towel.blinkenlights.nl'

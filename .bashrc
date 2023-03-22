#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi 

alias ls='ls --color=auto'
alias sudo='doas'
alias vim='nvim'
alias mpv='mpv --ytdl=no'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

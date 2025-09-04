#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias syncdots='~/dotfiles/syncdots.sh'

PS1=' [\e[97m\e[0m]\e[91m \u \e[0m[\e[97m\e[0m] [\W] > '

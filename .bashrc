#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias syncdots='~/dotfiles/syncdots.sh'
alias intellij='~/idea-IC-252.25557.131/bin/idea'

EYE=$'\e[0m[\e[97m\e[1m\e[0m]'
R=$'\e[91m'
PS1='\[ ${EYE}${R} \u ${EYE} [\W] > \]'

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias syncdots='~/dotfiles/syncdots.sh miata'

alias pip='uv pip'
alias sudo='sudo-rs'

EYE=$'\e[0m[\e[97m\e[1m\e[0m]'
R=$'\e[91m'
PS1='\[ ${EYE}${R} \u ${EYE}\] [\W] > '

# Created by `pipx` on 2025-09-29 06:47:55
export PATH="$PATH:/home/jonatan/.local/bin"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias syncdots='~/dotfiles/syncdots.sh tva'
alias minutes='~/minutes.sh'
alias timeline='~/timeline/target/release/timeline'

alias pip='uv pip'
alias sudo='sudo-rs'


PS1=' \[\e[38;2;249;193;89m\]\u \[\e[30;48;2;249;139;89m\]\W\[\e[0;38;2;249;139;89m\]: '


export QT_QPA_PLATFORMTHEME="qt6ct"
# Created by `pipx` on 2025-09-29 06:47:55
export PATH="$PATH:/home/jonatan/.local/bin"

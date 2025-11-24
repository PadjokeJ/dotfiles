#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias syncdots='~/dotfiles/syncdots.sh newdots'
alias minutes='~/minutes.sh'
alias timeline='~/timeline/target/release/timeline'
alias fvim='~/fvim.sh'

alias pip='uv pip'
alias python='uv run'
alias sudo='sudo-rs'

alias gitgraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"

PS1=' \[\e[38;2;0;255;255m\]\u \[\e[30;48;2;0;255;255m\]\W\[\e[0;38;2;0;255;255m\]: \[\e[0m\]'

export EDITOR="vim"
export QT_QPA_PLATFORMTHEME="qt6ct"
# Created by `pipx` on 2025-09-29 06:47:55
export PATH="$PATH:/home/jonatan/.local/bin"

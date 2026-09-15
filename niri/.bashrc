#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias syncdots='~/dotfiles/syncdots.sh niri'
alias minutes='~/minutes.sh'
alias timeline='~/timeline/target/release/timeline'
alias fvim='~/fvim.sh'

alias calc='~/calc.sh'

alias pip='uv pip'
alias python='uv run'
alias sudo='sudo-rs -p "%p"'
alias neofetch='fastfetch'
alias krul='curl'

alias mkdocs='uv run mkdocs'

alias agpl='cp /usr/share/licenses/spdx/AGPL-3.0-or-later.txt LICENSE'
alias lgpl='cp /usr/share/licenses/spdx/LGPL-3.0-or-later.txt LICENSE'
alias gpl='cp /usr/share/licenses/spdx/GPL-3.0-or-later.txt LICENSE'

alias gitgraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias scenicview="java --module-path ~/jlib/javafx-sdk-26/lib --add-modules javafx.web,javafx.fxml,javafx.swing -jar ~/Downloads/scenicview/lib/scenicview.jar"

PS1=' \[\e[38;2;127;200;255m\]\u \[\e[30;48;2;127;200;255m\]\W\[\e[0;38;2;127;200;255m\]: \[\e[0m\]'

export EDITOR="nvim"
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME="qt6ct"
# Created by `pipx` on 2025-09-29 06:47:55
export PATH="$PATH:/home/jonatan/.local/bin"
export _JAVA_AWT_WM_NONREPARENTING=1

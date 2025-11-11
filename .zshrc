# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/dgon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# User configuration
export PATH="/opt/homebrew/bin:$PATH"

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls='eza'
alias ll='ls -alF --icons=auto'

alias cat='bat --theme base16-256'

alias ..='cd ..'

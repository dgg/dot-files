# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/dgon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt autocd

# Use the up and down keys to navigate the history
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls='eza'
alias ll='ls -alF --icons=auto'

alias ..='cd ..'

alias gemini='bunx gemini'

#export BAT_THEME=base16-256
export BAT_THEME=Nord
# colorize man pages with bat
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"

# dotnet
# zsh parameter completion for the dotnet CLI

_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi

  # This is not a variable assignment, don't remove spaces!
  _values = "${(ps:\n:)completions}"
}

compdef _dotnet_zsh_complete dotnet

# bun completions
[ -s "/Users/dgon/.bun/_bun" ] && source "/Users/dgon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# docker completions
eval "$(docker completion zsh)"

eval "$(oh-my-posh init zsh --config ~/.dgg.omp.json)"

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

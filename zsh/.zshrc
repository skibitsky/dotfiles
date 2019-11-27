# Removing shell startup lag caused by nvm
# https://github.com/lukechilds/zsh-nvm#lazy-loading
export NVM_LAZY_LOAD=true

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

function reset_trap {
  # Hacky hack because of <function/script-that-sets-trap-INT>
  trap - INT
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec reset_trap

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=5

ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git brew z gitignore zsh-nvm git-flow-avh zsh-autosuggestions zsh-completions docker docker-compose)

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions/git-functions.zsh

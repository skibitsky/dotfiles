# Removing shell startup lag caused by nvm
# https://github.com/lukechilds/zsh-nvm#lazy-loading
export NVM_LAZY_LOAD=true

export PATH=$HOME/bin:/usr/local/bin:$PATH

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# .NET Core SDK tools
DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH="$PATH:/$HOME/.dotnet/tools"

function reset_trap {
  # Hacky hack because of <function/script-that-sets-trap-INT>
  trap - INT
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec reset_trap

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="typewritten/typewritten"
TYPEWRITTEN_GIT_RELATIVE_PATH=true

DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=180

ENABLE_CORRECTION="true"

HIST_STAMPS="dd-mm-yyyy"

plugins=(
  git 
  brew 
  gitignore 
  zsh-nvm 
  git-flow-avh 
  zsh-autosuggestions 
  zsh-completions 
  docker 
  docker-compose
  zsh-syntax-highlighting
  zsh-better-npm-completion
)

autoload -U compinit && compinit

# The Fuck
eval $(thefuck --alias)

# Zoxide
eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions/git-functions.zsh
source ~/.dotfiles/zsh/functions/other-functions.zsh

# Removing shell startup lag caused by nvm
# https://github.com/lukechilds/zsh-nvm#lazy-loading
export NVM_LAZY_LOAD=true

export PATH=$HOME/bin:/usr/local/bin:$PATH

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

plugins=(git brew z gitignore zsh-nvm git-flow zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.cargo/bin:$PATH"

# Open in Sublime Text
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Jump into dotfiles
alias cdd='cd ~/.dotfiles'

# Jump into iCloud Downloads
alias cdid='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads'

# Screenfetch bug workaround https://github.com/KittyKatt/screenFetch/issues/552
alias screenfetch='screenfetch -E'

# Git Flow 
alias gfff='git flow feature finish'
alias gffs='git flow feature start'

# Removing shell startup lag caused by nvm
# https://github.com/lukechilds/zsh-nvm#lazy-loading
export NVM_LAZY_LOAD=true

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

function reset_trap {
  # Hacky hack because of <function/script-that-sets-trap-INT>
  trap - INT
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec reset_trap

# ZSH_THEME="robbyrussell"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "greymd/docker-zsh-completion"

# oh-my-zsh plugins 
zplug "plugins/git",	from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/zsh-nvm", from:oh-my-zsh

# Note: To specify the order in which packages should be loaded, use the defer
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Theme
zplug 'dracula/zsh', as:theme

# Install zplug plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
# Print all the rubbish to null, not terminal
zplug load --verbose > /dev/null

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# The Fuck
eval "$(thefuck --alias)"

# plugins=(git brew z gitignore zsh-nvm git-flow-avh zsh-autosuggestions zsh-completions docker docker-compose)

source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions/git-functions.zsh

# This loads NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh 

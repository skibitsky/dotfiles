export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Refresh bash
alias refresh='source ~/.bash_profile' 

# Open in Sublime
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

export PATH="$HOME/.cargo/bin:$PATH"

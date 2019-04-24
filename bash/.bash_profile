export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [ -e /Users/gleb/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/gleb/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Refresh bash
alias refresh='source ~/.bash_profile' 

# Open in Sublime
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

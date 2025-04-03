# Zsh configuration file
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting command-not-found)
source $ZSH/oh-my-zsh.sh

# Set aliases
alias ls="eza --icons --group-directories-first"
alias cat="bat"

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load starship prompt
eval "$(starship init zsh)"

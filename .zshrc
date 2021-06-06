export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH=/usr/bin/:$PATH
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"

plugins=(git fzf)

# Import Functions
source $HOME/.config/nvim/shell_functions

bindkey "^l" forward-word
bindkey "^h" backward-word

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

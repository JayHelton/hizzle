export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH=/usr/bin/:$PATH
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export EDITOR=vim
ZSH_THEME=fletcherm
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"

bindkey "^l" forward-word
bindkey "^h" backward-word

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Custom commands to open a NVIM sessions for the project
hizzle() {
  if [ $# -eq 0 ]; then
    tmux_it $(cd ~/projects && ls -d */ | fzf) 
    return;
  fi
  tmux_it $1
  return;
}

tmux_it() {
  project=$1
  cd $HOME/projects/$project || { return; }
  tmux new -s $project -d
  tmux split-window -t $project -l 1
  tmux send-keys -t "$project:1.1" C-z "nvim ." Enter
  tmux a -t "$project:1.1"
}

search() {
  term=$1
  dir=$1
  rg -r "$1" $2 | fzf
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jarretthelton/packages/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jarretthelton/packages/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jarretthelton/packages/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jarretthelton/packages/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


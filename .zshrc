export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH=/usr/bin/:$PATH
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

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
  tmux split-window -t $project -l 10
  tmux send-keys -t "$project:1.1" C-z "nvim ." Enter
  tmux a -t "$project:1.1"
}

search() {
  term=$1
  dir=$1
  grep -r "$1" $2 | fzf
}

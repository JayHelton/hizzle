export PATH=/usr/bin/:$PATH
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export EDITOR=vim
export DOCKER_CLIENT_TIMEOUT=240
export COMPOSE_HTTP_TIMEOUT=120

ZSH_THEME=nanotech
plugins=(
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

alias k=kubectl
alias c=clear
alias n="nvim ."
alias v=vivaldi

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


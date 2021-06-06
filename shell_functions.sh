oproj() {
  tmux-it $(cd ~/projects && ls -d */ | fzf)
}

tmux-it() {
  cd ~/projects/$1 && tmux new -s $1 
}

#!/bin/zsh

rm ~/.zshrc
rm ~/.tmux.conf

ln -s ~/.config/nvim/.zshrc .zshrc
ln -s ~/.config/nvim/.tmux.conf .tmux.conf

nvim +PlugUpdate +qa


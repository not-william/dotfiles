#!/bin/bash

dotfiles=(".vimrc" ".zshrc" ".tmux.conf")
dir="$HOME/code/dotfiles"
for dotfile in "${dotfiles[@]}";do
 ln -sf "${dir}/${dotfile}" "$HOME"
done

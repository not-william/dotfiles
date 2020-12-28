#!/bin/bash

echo "Making symlinks..."
dotfiles=(".vimrc" ".zshrc" ".tmux.conf")
dir="$HOME/code/dotfiles"
for dotfile in "${dotfiles[@]}";do
 ln -sfv "${dir}/${dotfile}" "$HOME"
done

# Installing fonts...
echo Installing fonts...
cp $dir/Arimo* $HOME/Library/fonts

# moving tmux theme
mkdir $HOME/.tmux-themes
cp $dir/basic.tmuxtheme $HOME/.tmux-themes/basic.tmuxtheme

# install pathogen for vim
# echo Installing pathogen for vim...
# mkdir -p ~/.vim/autoload ~/.vim/bundle
# curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo Installing vundle...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


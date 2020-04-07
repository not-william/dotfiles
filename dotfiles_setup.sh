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

# install pathogen for vim
echo Installing pathogen for vim...
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo Installing vimwiki
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/

echo Installing vundle...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


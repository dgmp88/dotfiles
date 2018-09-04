#!/bin/sh

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim
ln -s -b "$HOME/.dotfiles/vim/vimrc.symlink" "$HOME/.config/nvim/init.vim"

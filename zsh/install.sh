#!/bin/sh
#
# oh-my-zsh
#
# This installs oh-my-zsh if it's not already installed.

# Check if oh-my-zsh is already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "  oh-my-zsh is already installed"
  exit 0
fi

echo "  Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "  oh-my-zsh installed successfully"

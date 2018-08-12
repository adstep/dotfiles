#!/bin/bash

# Update Apt-Get
sudo apt-get update

# 7 Zip
sudo apt-get install p7zip-full

# ZSH
sudo apt-get install -y zsh

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# NodeJS
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# NPM Packages
sudo npm i -g typescript http-server

# Git credential preference
git config --global credential.helper store
git config --global push.default matching

# Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Build Essential
sudo apt-get install -y build-essential

# Make
sudo apt-get install -y make

# GDB
sudo apt-get install -y gdb

# WSL-Terminal
wget https://github.com/goreliu/wsl-terminal/releases/download/v0.8.11/wsl-terminal-0.8.11.7z
7z x wsl-terminal-0.8.11.7z
cp wsl-terminal /mnt/c/wsl-terminal/
rm -rf wsl-terminal-0.8.11.7z

# Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

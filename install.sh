#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Update Apt-Get
sudo apt-get update

# 7 Zip
sudo apt-get install -y p7zip-full

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# NodeJS
sudo apt-get install -y nodejs

# NPM Packages
sudo npm i -g typescript http-server

# Git credential preference
git config --global credential.helper store
git config --global push.default matching

# Build Essential
sudo apt-get install -y build-essential

# Make
sudo apt-get install -y make

# GDB
sudo apt-get install -y gdb

# WSL-Terminal
# wget https://github.com/goreliu/wsl-terminal/releases/download/v0.8.11/wsl-terminal-0.8.11.7z
# 7z x wsl-terminal-0.8.11.7z
# cp wsl-terminal /mnt/c/wsl-terminal/
# rm -rf wsl-terminal-0.8.11.7z
# cp schemes/afterglow.minttyrc /mnt/c/dev/wsl-terminal/etc/themes/afterglow.minttyrc

# Bash-It Install
rm -rf ~/.bash_it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

# Tmux Plugin Manager
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

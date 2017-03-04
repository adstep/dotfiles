#!/bin/bash

# ZSH
sudo apt-get install -y zsh

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# NodeJS
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# NPM Packages
sudo npm i -g typescript http-server

# Git credential preference
git config --global credential.helper store
git config --global push.default matching

# Tmuxinator
sudo apt-get install -y ruby
yes | gem install tmuxinator

# Tmuxinator completions
mkdir ~/.bin
curl -o ~/.bin/tmuxinator.zsh "https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh"

# Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

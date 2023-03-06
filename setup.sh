#!/bin/bash

cp ./bash/.bash_aliases    ~/.bash_aliases
cp ./bash/.bashrc          ~/.bashrc
cp ./dircolors/.dircolors  ~/.dircolors
cp -r ./oh-my-posh/themes/ ~/.oh-my-posh/
cp ./tmux/.tmux.conf       ~/.tmux.conf
cp ./tmux/.tmux.conf.local ~/.tmux.conf.local
cp vim/.vimrc              ~/.vimrc

# Ensure vim plugins are installed via Vundle
vim +PlugInstall +qall

source ~/.bashrc
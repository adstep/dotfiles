#!/bin/bash

cp ./bash/.bash_aliases    ~/.bash_aliases
cp ./bash/.bashrc          ~/.bashrc
cp ./dircolors/.dircolors  ~/.dircolors
cp -r ./oh-my-posh/        ~/.oh-my-posh/
cp ./tmux/.tmux.conf       ~/.tmux.conf
cp ./tmux/.tmux.conf.local ~/.tmux.conf.local
cp vim/.vimrc               ~/.vimrc

mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/tomasiser/vim-code-dark ~/.vim/pack/themes/start

vim +PluginInstall +qall
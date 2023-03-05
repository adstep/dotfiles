#!/bin/bash

cp ./bash/.bash_aliases    ~/.bash_aliases
cp ./bash/.bashrc          ~/.bashrc
cp ./dircolors/.dircolors  ~/.dircolors
cp -r ./oh-my-posh/        ~/.oh-my-posh/
cp ./tmux/.tmux.conf       ~/.tmux.conf
cp ./tmux/.tmux.conf.local ~/.tmux.conf.local
cp vim/.vimrc              ~/.vimrc

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Download vscode-dark-theme
rm -rf ~/.vim/pack/themes/start
mkdir ~/.vim/pack/themes/start
git clone https://github.com/tomasiser/vim-code-dark ~/.vim/pack/themes/start

# Ensure vim plugins are installed via Vundle
vim +PluginInstall +qall

# Install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh
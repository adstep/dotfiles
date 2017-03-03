#!/bin/bash

rm bash/.bashrc
rm tmux/.tmux.conf
rm vim/.vimrc
rm zsh/.zshrc

cp ~/.bashrc bash/.bashrc
cp ~/.tmux.conf tmux/.tmux.conf
cp ~/.vimrc vim/.vimrc
cp ~/.zshrc zsh/.zshrc


#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

cp bash/.bash_aliases       ~/.bash_aliases
cp bash/.bashrc             ~/.bashrc
cp bash/envy.theme.bash     $HOME/.bash_it/themes/envy/envy.theme.bash
cp dircolors/.dircolors     ~/.dircolors
cp git/.git-completion.bash ~/.git-completion.bash
cp git/.gitconfig           ~/.gitconfig
cp tmux/.tmux.conf          ~/.tmux.conf
cp vim/.vimrc               ~/.vimrc

# cp schemes/afterglow.minttyrc /mnt/c/dev/include/wsl-terminal/etc/themes/

vim +PluginInstall +qall
~/.tmux/plugins/tpm/scripts/install_plugins.sh

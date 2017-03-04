sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

npm i -g typescript http-server

git config --global credential.helper store

sudo apt-get install ruby
gem install tmuxinator

curl -o ~/.bin/tmuxinator.zsh "https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

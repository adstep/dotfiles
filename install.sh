#!/bin/bash

sudo apt-get update

sudo apt-get install git
sudo apt-get install tmux

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

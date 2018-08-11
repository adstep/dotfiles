# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Setup Home Directory
cd /mnt/c/dev/

#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="/home/adstep/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='envy'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source "$BASH_IT"/bash_it.sh

# Fix folder colors
LS_COLORS="ow=01;36;40" && export LS_COLORS

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Setup Bash ALiases
if [ -f ~/.bash_aliases ]; then
    source  ~/.bash_aliases
fi

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Bash Autocomplete
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

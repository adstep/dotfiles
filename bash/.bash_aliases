# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Clear
alias cls="clear"

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Shortcuts
alias g="git"
alias dev='cd /mnt/c/dev'
alias github='cd /mnt/c/dev/github'
alias vs15Devenv='/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 14.0/Common7/IDE/devenv.exe'
alias vs17Devenv='/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Enterprise/Common7/IDE/devenv.exe'
alias vs15='find -name "*.sln" | while read sln; do vs15Devenv $sln; done &'
alias vs17='find -name "*.sln" | while read sln; do vs17Devenv $sln; done &'

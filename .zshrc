ZSH_DISABLE_COMPFIX="true"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/will/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose fancy-ctrl-z history vi-mode)

source $ZSH/oh-my-zsh.sh

# Turn on history saving after quitting shell
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

### ALIASES ###

# exa aliases
alias l="exa -l"
alias la="exa -la"

# postgresql
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# Transmission alias
alias tsm="transmission-remote"

alias servers="aws ec2 describe-instances --query 'Reservations[*].Instances[*].{Instance:InstanceId,Type:InstanceType,AZ:Placement.AvailabilityZone,Name:Tags[?Key==\`Name\`]|[0].Value,Project:Tags[?Key==\`project\`]|[0].Value,IP:PublicIpAddress,State:State.Name,CPUcores:CpuOptions.CoreCount,CPUthreads:CpuOptions.ThreadsPerCore}'   --output table"

# Set up PATH
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# git
alias gl="git log --graph --full-history --all --color --date=short --pretty=format:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%ad %s\""

export EDITOR=nvim

export CDPATH=.:~:~/code

export NOTES=~/Sync/Notes
export wnotes=~/Sync/Notes/work
export hnotes=~/Sync/Notes/home

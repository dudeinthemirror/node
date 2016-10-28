# ~/.bashrc: executed by bash(1) for non-login shells.
# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

export SHELL=bash
set -o vi
EDITOR=vi
export EDITOR
PS1="root@$(uname -n):$PWD > "
export PS1

export TERM=xterm-256color

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -ltr'
alias a='cd ..'
alias cs='clear'

mkdir -p "$HOME/.vim_bkp_files"

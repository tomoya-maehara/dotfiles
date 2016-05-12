# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Environment variables
PATH=$HOME/.rbenv/bin:$HOME/.phpenv/bin:$PATH:$HOME/.local/bin:$HOME/bin
export PATH
export EDITOR=vim

export HISTCONTROL=ignoredups:erasedups         # no duplicate entries
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history

# User specific aliases and functions
eval "$(rbenv init -)"
eval "$(phpenv init -)"

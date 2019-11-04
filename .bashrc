# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Environment variables
PATH=$HOME/.rbenv/bin:$HOME/.phpenv/bin:$PATH:$HOME/.local/bin:$HOME/.yarn/bin:$HOME/bin
export PATH
export EDITOR=vim

export HISTCONTROL=ignoredups:erasedups         # no duplicate entries
export HISTSIZE=1000000                         # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history

# Alias
alias ll='ls -lG'

if [[ -x `which colordiff` ]]; then
    alias diff='colordiff -u'
else
    alias diff='diff -u'
fi

export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
PATH=$PATH:$GOBIN
export PATH

# User specific aliases and functions
stty stop undef

eval "$(rbenv init -)"
eval "$(phpenv init -)"

VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
export VIRTUALENVWRAPPER_PYTHON

if [ -f /usr/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/bin/virtualenvwrapper.sh
fi

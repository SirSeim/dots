alias ll='ls -laG'
alias ..='cd ..'

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export BASH_SILENCE_DEPRECATION_WARNING=1

export WORKON_HOME=~/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
source /usr/local/bin/virtualenvwrapper.sh
source /Users/sirseim/git/embrace/embrace-developer-extensions/edx

export DOCKER_NETRC=$(cat ~/.netrc)

# Security sensitive things below this. DO NOT COMMIT

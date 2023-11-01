alias ll='ls -laGh'
alias ..='cd ..'

decode () {
    echo "$1" | base64 -d | jq
}

autoload -U +X compinit && compinit

# Complete homebrew stuff
if command -v brew 1>/dev/null 2>&1; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Go and Python setup
export GOPATH=$HOME/go
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH:$GOPATH/bin

# Complete pyenv setup
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Security sensitive things below this. DO NOT COMMIT
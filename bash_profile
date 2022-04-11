alias ll='ls -laG'
alias ..='cd ..'

export BASH_SILENCE_DEPRECATION_WARNING=1

# Go and Python setup
export GOPATH=$HOME/go
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH:$GOPATH/bin

# Complete pyenv setup
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Complete nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Security sensitive things below this. DO NOT COMMIT

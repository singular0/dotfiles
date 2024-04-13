# PyEnv
if command -v pyenv &>/dev/null; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi

# Go
if command -v go &>/dev/null; then
  export PATH="$HOME/go/bin:$PATH"
fi

# RustUp
if [ -d $HOME/.cargo/bin ]; then
  export PATH=$HOME/.cargo/bin:$PATH
fi
if [ -f $HOME/.cargo/env ]; then
  source $HOME/.cargo/env
fi

# macOS Homebrew
if command -v brew &>/dev/null; then
  BREW_PREFIX=`brew --prefix`
  export PATH=$BREW_PREFIX/bin:$BREW_PREFIX/sbin:$PATH
fi


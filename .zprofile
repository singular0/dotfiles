# PyEnv
if command -v pyenv &>/dev/null; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi

# macOS Homebrew
if command -v brew &>/dev/null; then
  BREW_PREFIX=`brew --prefix`
  export PATH=$BREW_PREFIX/bin:$BREW_PREFIX/sbin:$PATH
fi


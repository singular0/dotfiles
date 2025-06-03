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
  BREW_PREFIX="$(brew --prefix)"
  export PATH="$BREW_PREFIX/bin:$BREW_PREFIX/sbin:$PATH"
fi

# Perl
if [[ "$(uname)" == "Darwin" ]]; then
  export PATH="$HOME/perl5/bin${PATH:+:${PATH}}"
  export PERL5LIB="~/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
  export PERL_LOCAL_LIB_ROOT="~/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
  export PERL_MB_OPT="--install_base \"~/perl5\""
  export PERL_MM_OPT="INSTALL_BASE=~/perl5"
fi

# To add new key: security add-generic-password -a <login> -w <key> -l <key_name> -s <domain>
if [[ "$(uname)" == "Darwin" ]]; then
  export ANTHROPIC_API_KEY="$(security find-generic-password -l anthropic_api_key -w 2>/dev/null)"
  export OPENAI_API_KEY="$(security find-generic-password -l openai_api_key -w 2>/dev/null)"
  export OPENROUTER_API_KEY="$(security find-generic-password -l openrouter_api_key -w 2>/dev/null)"
  export TAVILY_API_KEY="$(security find-generic-password -l tavily_api_key -w 2>/dev/null)"
else
  export ANTHROPIC_API_KEY="$(pass show anthropic_api_key 2>/dev/null)"
  export OPENAI_API_KEY="$(pass show openai_api_key 2>/dev/null)"
  export OPENROUTER_API_KEY="$(pass show openrouter_api_key 2>/dev/null)"
  export TAVILY_API_KEY="$(pass show tavily_api_key 2>/dev/null)"
fi


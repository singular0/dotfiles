# macOS Homebrew
if command -v brew &>/dev/null; then
  BREW_PREFIX="$(brew --prefix)"
  export PATH="$BREW_PREFIX/bin:$BREW_PREFIX/sbin:$PATH"
fi

# Go
if command -v go &>/dev/null; then
  export PATH="$HOME/go/bin:$PATH"
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


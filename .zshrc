# Plugins

export ZINIT_HOME=/usr/local/opt/zinit
source $ZINIT_HOME/zinit.zsh

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" zsh-users/zsh-autosuggestions \
  atpull"zinit creinstall -q ." blockf zsh-users/zsh-completions \
  OMZP::fzf \
  singular0/zsh-env-secrets \
  willghatch/zsh-saneopt \
  wintermi/zsh-brew \
  wintermi/zsh-mise

zinit ice pick"async.sh" src"pure.zsh"
zinit light sindresorhus/pure

# User preferences

export LANG=en_US.UTF-8

# https://geoff.greer.fm/lscolors/
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
bindkey '^[[Z' reverse-menu-complete

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls="ls --color"
fi

if (( ${+commands[vim]} )); then
  export SUDO_EDITOR=vim
fi

export ENV_SECRETS=(
  "ANTHROPIC_API_KEY:anthropic_api_key"
  "OPENAI_API_KEY:openai_api_key"
  "OPENROUTER_API_KEY:openrouter_api_key"
  "TAVILY_API_KEY:tavily_api_key"
)

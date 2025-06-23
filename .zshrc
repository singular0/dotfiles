# Plugins

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "willghatch/zsh-saneopt"

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma-continuum/fast-syntax-highlighting"

zplug "mafredri/zsh-async"
zplug "sindresorhus/pure", use:pure.zsh, as:theme

zplug "plugins/fzf", from:oh-my-zsh, if:"which fzf"
zplug "wintermi/zsh-mise", if:"which mise"

if ! zplug check; then
  zplug install
fi

zplug load

# User preferences

export LANG=en_US.UTF-8

# https://geoff.greer.fm/lscolors/
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

if [[ "$(uname)" == "Darwin" ]]; then
  alias -g ls="ls --color"
fi

if command -v vim &>/dev/null; then
  export SUDO_EDITOR=vim
fi


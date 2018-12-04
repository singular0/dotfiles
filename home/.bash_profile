# Add ~/bin to the PATH
export PATH="$HOME/bin:$PATH"

# Add user gems binaries to the PATH
if command -v ruby >/dev/null 2>&1 && command -v gem >/dev/null 2>&1; then
  export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Init rbenv if installed
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# Make vim the default editor
export EDITOR="vim"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL="ignorespace:erasedups"
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:* --help"
# Allow use to re-edit a faild history substitution.
shopt -s histreedit
# History expansions will be verified before execution.
shopt -s histverify

# Russian locale, UTF-8 encoding
export LANG="ru_RU.utf-8"
# But POSIX messages, please
export LC_MESSAGES="C"

# Always enable colored `grep` output
alias grep="grep --color=auto"

# [user@host ~]$
PS1="[\[\e[33m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\]]$ "

# Mac OS X specific settings
if [ "`uname`" == "Darwin" ]; then
  BREW_PATH="`brew --prefix`"
  # Prepend brew bin to PATH
  export PATH="$BREW_PATH/bin:$PATH"
  # Enable bash_completion
  [ -f $BREW_PATH/etc/bash_completion ] && . $BREW_PATH/etc/bash_completion
  # Enable commandline coloring
  export CLICOLOR=1
  # Set ls colors
  export LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"
  # Configure homeshick
  if command -v homeshick >/dev/null 2>&1; then
    export HOMESHICK_DIR=$BREW_PATH/opt/homeshick
    source "$HOMESHICK_DIR/homeshick.sh"
  fi
else
  # Enable colored ls output
  alias ls="ls --color=auto"
  # Set ls colors
  export LS_COLORS="rs=0:di=36:ln=35:so=44;31;01:pi=44;30;01:ex=31;01:bd=44;01:cd=44;37;01:su=41;01:sg=43;30;01:tw=42;30;01:ow=43;30;01:"
fi


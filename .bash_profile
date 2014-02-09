# Add ~/bin to the PATH
export PATH="$HOME/bin:$PATH"

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

# Prefer Russian locale UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"
export LC_MESSAGES="C"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

PS1='[\u@\h \W]\$ '

# Mac OS X specific settings
if [ "`uname`" == "Darwin" ]; then
	BREW_PATH="`brew --prefix`"
	# Prepend brew bin to PATH
	export PATH="$BREW_PATH/bin:$PATH"
	# Enable bash_completion
	[ -f $BREW_PATH/etc/bash_completion ] && . $BREW_PATH/etc/bash_completion
	# Enable commandline coloring
	export CLICOLOR=1
	# Set ls colors close do Linux default
	export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
else
	# Enable colored ls output
	alias ls="ls --color=auto"
fi

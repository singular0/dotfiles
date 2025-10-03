#!/bin/sh

if command -v brew >/dev/null 2>&1; then
  echo "Bootstraping Homebrew"
  brew update
  brew install fzf mise ripgrep zinit zoxide
fi


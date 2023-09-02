#!/bin/sh

ZSH="$HOME/.oh-my-zsh"
ZSHRC="$HOME/.zshrc"
ZSHRC_BACKUP="$HOME/.zshrc.pre-oh-my-zsh"

if [ ! -d "$ZSH" ]; then
  echo "Bootstrapping oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  if [ ! -f "$ZSHRC_BACKUP" ]; then
    echo "Restoring $ZSHRC"
    mv "$ZSHRC_BACKUP" "$ZSHRC"
  fi
fi


#!/bin/sh

ZSH="$HOME/.oh-my-zsh"

if [ ! -d "$ZSH" ]; then
  echo "Bootstrapping oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


#!/bin/sh

if command -v pakku >/dev/null 2>&1; then
  echo "Bootstraping pakku"
  pakku -Sy --noconfirm fzf mise ripgrep zinit zoxide
fi


#!/bin/sh

set -e

if command -v lsb_release >/dev/null 2>&1; then
  if [ "$(lsb_release -is)" = "Debian" ]; then
    echo "Bootstraping Debian..."
    sudo apt install -y curl fzf gpg ripgrep zoxide zsh

    curl -fsSL https://mise.jdx.dev/gpg-key.pub | gpg --dearmor \
      | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg >/dev/null
    echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg " \
         "arch=$(dpkg --print-architecture)] https://mise.jdx.dev/deb stable main" \
      | sudo tee /etc/apt/sources.list.d/mise.list
    sudo apt update
    sudo apt install -y mise

    sudo chsh -s /bin/zsh "$(whoami)"
    bash -c "$(curl --fail --show-error --silent --location \
                    https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
  fi
fi


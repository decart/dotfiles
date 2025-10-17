#!/usr/bin/bash

NO_FORMAT="\033[0m"
C_RED="\033[48;5;203m"

if brew --version > /dev/null 2>&1; then
  brew install \
    fd \
    bat \
    eza \
    ripgrep \
    zoxide \
    git-delta \
    tealdeer \
    topgrade \
    fzf \
    lazygit \
    neovim \
    zinit \
    yazi \
    kanata \
    oh-my-posh
else
  echo "${C_RED} Homebrew is not installed. Skip! ${NO_FORMAT}";
  exit 1
fi



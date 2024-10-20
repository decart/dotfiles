#!/usr/bin/bash

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source $HOME/.cargo/env

cargo install \
  cargo-update \
  fd-find \
  bat \
  exa \
  ripgrep \
  zoxide \
  git-delta \
  tealdeer \
  topgrade

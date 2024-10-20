#!/usr/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install llvm clang build-essential pkg-config libssl-dev linux-headers-"$(uname -r)"
sudo apt install curl zsh zip unzip p7zip-full git python3-pip python3-venv tmux

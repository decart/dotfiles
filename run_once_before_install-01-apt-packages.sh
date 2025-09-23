#!/usr/bin/bash

source /etc/os-release
NO_FORMAT="\033[0m"
C_GREEN="\033[48;5;2m"

ubuntu_install() {
  sudo apt update
  sudo apt upgrade
  sudo apt install llvm clang build-essential pkg-config libssl-dev linux-headers-"$(uname -r)"
  sudo apt install curl zsh zip unzip p7zip-full git python3-pip python3-venv tmux
}

case $ID in
ubuntu)
  echo -e "${C_GREEN} Find Ubuntu distr! Install packages ${NO_FORMAT}"
  ubuntu_install
  ;;
esac

#!/usr/bin/bash

source /etc/os-release
NO_FORMAT="\033[0m"
C_GREEN="\033[48;5;2m"
C_RED="\033[48;5;203m"

aur_helper_not_installed() {
  echo -e "${C_RED} No aur helper installed! Please install yay or paru ${NO_FORMAT}";
}

aur_helper() {
  CMD="aur_helper_not_installed"

  if yay --version > /dev/null 2>&1; then
    CMD="yay -S"
  elif paru --version > /dev/null 2>&1; then
    CMD="paru -S"
  fi

  eval "$CMD $1"
}

ubuntu_install() {
  sudo apt update
  sudo apt upgrade
  sudo apt install llvm clang build-essential pkg-config libssl-dev linux-headers-"$(uname -r)"
  sudo apt install curl zsh zip unzip p7zip-full git python3-pip python3-venv tmux
}

alt_install() {
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install llvm clang meson ninja-build build-essential pkg-config libssl-devel kernel-headers-common libinput-tools libinput-devel
  sudo apt-get install curl zsh zip unzip p7zip git python3-module-pip python3-module-virtualenv tmux wl-clipboard
}

arch_install() {
  sudo pacman -Suy bluez bluez-utils base-devel
  sudo pacman -S --needed zsh zip unzip 7zip wl-clipboard python python-pip
  sudo pacman -S --needed fd bat eza ripgrep zoxide git-delta tealdeer fzf lazygit neovim yazi

  aur_helper zinit kanata-git oh-my-posh-git

  sudo systemctl start bluetooth.service
  sudo systemctl enable bluetooth.service
}

case $ID in
ubuntu)
  echo -e "${C_GREEN} Find Ubuntu distr! Install packages ${NO_FORMAT}"
  ubuntu_install
  ;;

altlinux)
  echo -e "${C_GREEN} Find AltLinux distr! Install packages ${NO_FORMAT}"
  alt_install
  ;;
esac

#!/usr/bin/bash

source /etc/os-release
NO_FORMAT="\033[0m"
C_GREEN="\033[48;5;2m"

ubuntu_install() {
  gsettings set org.gnome.mutter experimental-features '["scale-monitor-framebuffer", "xwayland-native-scaling"]'
}

alt_install() {
  gsettings set org.gnome.mutter experimental-features '["scale-monitor-framebuffer", "xwayland-native-scaling"]'
}

case $ID in
ubuntu)
  echo -e "${C_GREEN} Find Ubuntu distr! Update config ${NO_FORMAT}"
  ubuntu_install
  ;;

altlinux)
  echo -e "${C_GREEN} Find AltLinux distr! Update config ${NO_FORMAT}"
  alt_install
  ;;
esac

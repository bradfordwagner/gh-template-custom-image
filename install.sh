#!/bin/sh
# example install script; replace with the packages this image needs
pkg_installer=${1}

echo pkg_installer=${pkg_installer}

set -ex

alpine_deps() {
  apk add --no-interactive --no-cache curl
}

arch_deps() {
  pacman -Syu --noconfirm
  pacman -S --noconfirm curl
}

debian_deps() {
  apt-get update
  apt-get install -y curl
  rm -rf /var/lib/apt/lists/*
}

rhel_deps() {
  dnf install -y --allowerasing curl
}

${pkg_installer}_deps

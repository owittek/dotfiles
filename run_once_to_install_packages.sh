#!/bin/sh

cmd_exists() {
  command -v "$@" >/dev/null 2>&1
}

INSTALL_CMD="brew, pacman, dnf, apt"

if cmd_exists brew; then
  INSTALL_CMD="brew install"
elif cmd_exists pacman; then
  INSTALL_CMD="sudo pacman -S"
elif cmd_exists dnf; then
  INSTALL_CMD="sudo dnf install"
elif cmd_exists apt; then
  INSTALL_CMD="sudo apt install"
else
  echo "No package manager found, checked for ($INSTALL_CMD)" && exit
fi

TO_INSTALL=( "git" "fd" "fzf" "lsd" "pnpm" "tmux" "zoxide" "bat" "micromamba" )

# install neovim with nvim binary
! cmd_exists nvim && eval "$INSTALL_CMD neovim"

for PKG in "${TO_INSTALL[@]}"; do
  ! cmd_exists "$PKG" && eval "$INSTALL_CMD $PKG"
done


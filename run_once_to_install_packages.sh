#!/bin/sh

cmd_exists() {
  command -v "$@" >/dev/null 2>&1
}

echo "attempting to install missing packages..."

INSTALL="brew, pacman, dnf, apt"

if cmd_exists brew; then
  INSTALL="brew install"
elif cmd_exists pacman; then
  INSTALL="sudo pacman -S"
elif cmd_exists dnf; then
  INSTALL="sudo dnf install"
elif cmd_exists apt; then
  INSTALL="sudo apt install"
else
  echo "No package manager found, checked for ($INSTALL)" && exit
fi

TO_INSTALL=( "git" "fd" "fzf" "lsd" "pnpm" "tmux" "zoxide" "bat" "micromamba" )

# install neovim with nvim binary
! cmd_exists nvim && eval "$INSTALL neovim"

for PKG in "${TO_INSTALL[@]}"; do
  ! cmd_exists "$PKG" && eval "$INSTALL $PKG"
done

exit 0

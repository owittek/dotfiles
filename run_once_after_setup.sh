#!/bin/sh

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

setup_omz() {
  INSTALL_SCRIPT="$HOME/.oh-my-zsh/tools/install.sh"
  if [ ! -x "$INSTALL_SCRIPT" ]; then
    chmod u+x "$INSTALL_SCRIPT"
  fi
  /bin/sh "$INSTALL_SCRIPT" --keep-zshrc
}

setup_omz

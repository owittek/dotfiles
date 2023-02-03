#!/bin/sh

setup_omz() {
  OMZ_DIR = "$HOME/.oh-my-zsh"
  [ -d "$OMZ_DIR" ] && exit

  INSTALL_SCRIPT="$OMZ_DIR/tools/install.sh"
  if [ ! -x "$INSTALL_SCRIPT" ]; then
    chmod u+x "$INSTALL_SCRIPT"
  fi
  /bin/sh "$INSTALL_SCRIPT" --keep-zshrc
}

setup_omz

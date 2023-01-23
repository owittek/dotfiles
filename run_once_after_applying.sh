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

setup_tmux() {
  if command_exists tmux; then
    tmux source "$HOME/.tmux.conf"
  else
    echo "tmux is missing.\nInstall tmux & run 'tmux source ~/.tmux.conf' manually"
  fi
}

setup_omz
setup_tmux

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

export GPGKEY="05CF2413634FB03227E5E82CA77C112DFE95BD68"
export GPG_TTY=$(tty)

export JAVA_HOME=$(/usr/libexec/java_home)
export NVM_DIR="$HOME/.nvm"
export FZF_BASE=$(command -v fzf)
export EDITOR="nvim"
export SUDO_EDITOR="nvim"

export PATH="$BREW_DIR/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"

MAILCHECK=0
BREW_DIR=$(brew --prefix)
NVM_HOMEBREW=$(brew --prefix nvm)
ZSH_TMUX_ITERM2="true"
ZSH_TMUX_FIXTERM_WITH_256COLOR="true"

ZSH_THEME='powerlevel10k/powerlevel10k'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(sudo nvm zsh-syntax-highlighting fzf ng zsh-interactive-cd tmux colored-man-pages)

zstyle ':completion:*' menu select
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' lazy-cmd eslint prettier typescript

source $HOME/.docker/init-zsh.sh || true
source $ZSH/oh-my-zsh.sh

########## ALIASES ##########
alias b='brew'
alias bi='brew info'
alias bs='brew search'
alias bb='brew install'
alias bu='brew uninstall'

alias df='df -h'
alias network='networksetup -listallhardwareports'
alias checksum='shasum'
alias ssdcheck='smartctl -a disk0'
alias speedtest='speedtest --secure'
alias sudoedit='function _sudoedit(){sudo -e "$1";};_sudoedit'

alias 7x='7z x $1'
alias lg='lazygit'
alias dotc='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias nv='neovide --frame=buttonless'

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# https://stackoverflow.com/a/29403520
bindkey "^U" backward-kill-line
bindkey "^X\\x7f" backward-kill-line
bindkey "^X^_" redo

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

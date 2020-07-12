# GCC directories
export PATH="$HOME/.local/bin:/snap/bin:/sbin${PATH:+:${PATH}}"
export MANPATH="$HOME/.local/man:/usr/local/share/man:/usr/share/man${MANPATH:+:${MANPATH}}"
export CPATH="$HOME/.local/include:/usr/include:/usr/local/include${CPATH:+:${CPATH}}"
export LIBRARY_PATH="$HOME/.local/lib${LIBRARY_PATH:+:${LIBRARY_PATH}}"
export LD_LIBRARY_PATH="$HOME/.local/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export PKG_CONFIG_PATH="$HOME/.local/lib/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"

# LUA
export LUA_VERSION="5.1"
export LUA_PATH="$HOME/.local/share/lua/${LUA_VERSION}/?.lua${LUA_PATH:+;${LUA_PATH}}"

# Docker
export DOCKER_ID_USER="minhnh91"

# Virual environments
#export VIRTUALENVWRAPPER_PYTHON=$(which python3)
#export WORKON_HOME=$HOME/workspace/virtualenvs
#source virtualenvwrapper.sh

export EDITOR='vim'

# Different prompt for SSH sessions
if [ -n "$SSH_CLIENT" ]; then
    PS1=$'\n\e[01;33m\[%n@%m\]\e[0m'"$PS1"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/env_config/.histfile
HISTSIZE=10000
SAVEHIST=15000
setopt appendhistory autocd

# Ubuntu 16 bluetooth problem
# (need sudo apt-get install pulseaudio-module-bluetooth)
# pactl load-module module-bluetooth-discover


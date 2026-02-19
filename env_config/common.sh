# Export config directory
if [ -z $ENV_CONFIG_DIR ] ; then
    export ENV_CONFIG_DIR="$(dirname $0)"
fi

# GCC directories
#export PATH="$HOME/.local/bin${PATH:+:${PATH}}"
#export MANPATH="$HOME/.local/man:/usr/local/share/man:/usr/share/man${MANPATH:+:${MANPATH}}"
#export CPATH="$HOME/.local/include:/usr/include:/usr/local/include${CPATH:+:${CPATH}}"
#export LIBRARY_PATH="$HOME/.local/lib${LIBRARY_PATH:+:${LIBRARY_PATH}}"
#export LD_LIBRARY_PATH="$HOME/.local/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
#export PKG_CONFIG_PATH="$HOME/.local/lib/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"

# LUA
#export LUA_VERSION="5.4"
#export LUA_PATH="/usr/share/lua/${LUA_VERSION}/?.lua;$HOME/.local/share/lua/${LUA_VERSION}/?.lua${LUA_PATH:+;${LUA_PATH}}"

# Docker
export DOCKER_ID_USER="minhnh91"

# Virual environments
VENV_ROOT="$HOME/ws/envs"
function source_venv () {
    # $1: venv name
    VENV_HOME="$VENV_ROOT/$1"
    source "$VENV_HOME/bin/activate"
    # Setup libraries for CMake
    export CMAKE_INSTALL_PREFIX="$VENV_HOME"
    #export LIBRARY_PATH="$VENV_HOME/lib${LIBRARY_PATH:+:${LIBRARY_PATH}}"
    export LD_LIBRARY_PATH="$VENV_HOME/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
    export PKG_CONFIG_PATH="$VENV_HOME/lib/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"
}

export EDITOR='nvim'

# Different prompt for SSH sessions
if [ -n "$SSH_CLIENT" ]; then
    PS1=$'\n\e[01;33m\[%n@%m\]\e[0m'"$PS1"
    # ensure GPG use terminal-based authentication
    export GPG_TTY=$(tty)
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/env_config/.histfile
HISTSIZE=10000
SAVEHIST=15000
setopt appendhistory autocd

# FZF with ripgrep integration
#export FZF_DEFAULT_COMMAND='rg --files --follow --hidden --glob=!.git/'

export PS1="\[\033[38;5;70m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;70m\]@\h]\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[\033[38;5;160m\][\@]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"

export EDITOR='vim'
 
# Different prompt for SSH sessions
if [ -n "$SSH_CLIENT" ]; then
    PS1=$'\n\e[01;33m\[%n@%m\]\e[0m'"$PS1"
fi

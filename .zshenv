# Sadly, this file must reside in $HOME, these variables could be set up in /etc/profile, but this would interfere with other user setups

if [[ -z "$XDG_CONFIG_HOME" ]]; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -z "$XDG_DATA_HOME" ]]; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi

if [[ -z "$XDG_CACHE_HOME" ]]; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

if [[ -z "$ZDOTDIR" ]]; then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi

. $ZDOTDIR/.zshrc

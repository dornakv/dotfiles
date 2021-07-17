source ${XDG_DATA_HOME}/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit .p10k.zsh.
[[ ! -f ${XDG_CONFIG_HOME}/zsh/.p10k.zsh ]] || source ${XDG_CONFIG_HOME}/zsh/.p10k.zsh

export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

case $(uname) in
    Linux)
        alias ll="ls -lh --color=auto --hide='__pycache__'"
        alias la="ls -lah --color=auto"
        ;;
    Darwin)
        alias ll="ls -lhG --hide='__pycache__'"
        alias la="ls -lhG"
        ;;
    *) echo "Not sure what system are you using, cannot set the ll alias";;
esac

# Remove background from ls color output
eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"

alias cls="clear"
alias py="python"
alias sudo="sudo "

# Replace vim with neovim
alias vim="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim
# Above option makes zsh in tmux use vi keybindings, use regular:
bindkey -e


# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
unsetopt LIST_BEEP

mkcd ()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}


# Check if running in wsl
if uname -a | grep microsoft>/dev/null; then

    # To display X apps in VcXsrv from https://medium.com/@dejongsiem/the-creation-of-latex-documents-using-vimtex-and-ultisnips-on-wsl-2-c4d768f48a4a
    export DISPLAY=`grep -oP "(?<=nameserver ).+" /etc/resolv.conf`:0.0

fi

[[ ! -f ${XDG_CONFIG_HOME}/zsh/.conda_init ]] || source ${XDG_CONFIG_HOME}/zsh/.conda_init

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

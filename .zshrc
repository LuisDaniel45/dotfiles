# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt beep

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

bindkey -v
export KEYTIMEOUT=100
export EDITOR=nvim 
export TERM=st

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/danyel/.zshrc'

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.compinit

# End of lines added by compinstall
alias ls='ls --color=auto'
alias vim='nvim'
alias mpv='mpv --ytdl=no'
alias grep='grep --color=auto'
alias lf='lfub'
alias rm='rm -i'
alias mov='.local/bin/mov-cli'
alias battery="acpi"

# constants 
export EDITOR="nvim"
export BROWSER="firefox"

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

bindkey -M viins 'jk' vi-cmd-mode

bindkey '^ ' autosuggest-clear
bindkey '^[[Z' autosuggest-accept

fzfcd () {
    dir="$(fzf)"
    if [ "$dir" = ""  ]; then
        return
    fi;
    cd "$( dirname "$dir" )";
}

lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi;
}

wallpaper () {
    wallpaper_dir="/home/danyel/.config/wallpaper/"
    picture="${wallpaper_dir}$(ls ${wallpaper_dir} | fzf)"
    if [[ "$picture" == "" ]]; then
        return
    fi
    xwallpaper --zoom "$picture" 
}

bindkey -s '^o' '^ulfcd\n' 
bindkey -s '^A' '^ufzfcd\n'
bindkey -s '^P' 'exit\n'


autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Lines configured by zsh-newuser-install
autoload -U colors && colors
autoload -Uz compinit add-zsh-hook vcs-info
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ';'
zstyle ':vcs_info:*' stagedstr ':'
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats'(%b|%a%u%c)'

add-zsh-hook precmd vcs_info
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Stuff
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob promptsubst
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/anu/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

dynamiccolor() {
    if [ ! -z $(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/') ]; then
        if [ ! -z "$(git status --short)" ]; then
            echo -n "%F{10}:"
        else
            echo -n "%F{cyan}:"
        fi
    else
        echo -n "%F{default}:"
    fi

    echo -n ":"
}


prompt="\$(dynamiccolor)%F{reset} "

for f in ~/.config/sh/*; do source $f; done

EDITOR=vim

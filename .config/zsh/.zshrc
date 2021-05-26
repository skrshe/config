# Lines configured by zsh-newuser-install
autoload -U colors && colors
autoload -Uz compinit
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Stuff
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/anu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
prompt=":: "

for f in ~/.config/sh/*; do source $f; done

EDITOR=vim

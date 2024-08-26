#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls -ahbpx --color=auto --group-directories-first'
alias ls='eza -albh --color=auto --icons=auto --git --no-quotes --group-directories-first'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias dotfiles='/usr/bin/git --git-dir=/home/kaio/.dotfiles --work-tree=/home/kaio'

alias cd..='cd ..'
alias repos='cd ~/repos'
alias config='cd ~/.config'

alias pac='sudo pacman'

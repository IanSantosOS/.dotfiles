#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1="[\033[01;32m\]\u \[\033[01;34m\]\W\[\033[00m\]]\033[01;33m\]\$\033[00m\] "
PS1="[\u@\h \W]\$ "

export EDITOR="nvim"

export PATH="$HOME/.local/bin"

# set -o vim

# append to the history file, don't overwrite it
shopt -s histappend

# Allows you to cd into directory merely by typing the directory name
shopt -s autocd

# alias ls='\ls -Noh --color --group-directories-first'
# alias la='\ls -Noah --color --group-directories-first'
# alias ll='\ls -x --color --group-directories-first'
# alias lla='\ls -xa --color --group-directories-first'
alias ls='eza -lhg --color --icons=auto --git --git-repos --no-quotes --smart-group --group-directories-first'
alias la='eza -alhg --color --icons=auto --git --git-repos --no-quotes --smart-group --group-directories-first'
alias ll='eza -x --color --icons=auto --git --group-directories-first'
alias lla='eza -xa --color --icons=auto --git --group-directories-first'

alias tree="eza -T" # with -L={DEPTH} you can decide the depth of the recursion

alias grep="grep --color"
alias fgrep="fgrep --color"
alias egrep="egrep --color"

alias ip="\ip -c"
alias ipa="\ip -c addr"

alias clockdvd="\tty-clock -Sbra 75000000 -d 0"
# alias clock="\tty-clock -Scbs"
alias clock="\peaclock --config-dir $HOME/.config/peaclock"
alias peaclock="\peaclock --config-dir $HOME/.config/peaclock"

alias matrix="neo-matrix"

alias neofetch="fastfetch"

alias actually="cowsay -f actually 'Ummm... Actually... '"
alias nerd="cowsay -f actually"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dfs="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

alias cd..="cd .."

alias cls="clear"
alias c="clear"

alias v="vim"
alias n="nvim"
alias nano="micro"
alias evim='vim -yc "imap <C-S-q> <Esc>:q!<CR>"'
# alias nano='vim -yc "imap <C-S-q> <Esc>:q!<CR>"'

alias mkdir="mkdir -pv"

alias bs="$EDITOR $HOME/.bashrc"
alias s="source $HOME/.bashrc"

alias pac="sudo pacman"

# GIT
alias gadd="git add"
alias gpush="git push"
alias gstatus="git status"
alias gcommit="git commit"
alias gremote="git remote"

colormap() {
    for c in {0..255}; do
        let "d=($c+3)%6"
        printf "\x1b[48;5;%dm  \x1b[49m\x1b[38;5;%dm%03d \x1b[0;37;40m" $c $c $c
        if [ "$d" -eq "0" ]; then echo ""; fi
    done;
    printf "\x1b[0m"
    echo
}

take() { # maybe I change that to `md`
    mkdir -p $1
    cd $1
}

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"

export QT_QPA_PLATFORMTHEME=qt6ct

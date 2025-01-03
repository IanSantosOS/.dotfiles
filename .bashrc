#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# alias ls='\ls -Noh --color --group-directories-first'
# alias la='\ls -Noah --color --group-directories-first'
# alias ll='\ls -x --color --group-directories-first'
# alias lla='\ls -xa --color --group-directories-first'
alias ls='eza -lhg --color --icons=auto --git --git-repos --no-quotes --smart-group --group-directories-first'
alias la='eza -alhg --color --icons=auto --git --git-repos --no-quotes --smart-group --group-directories-first'
alias ll='eza -x --color --icons=auto --git --group-directories-first'
alias lla='eza -xa --color --icons=auto --git --group-directories-first'

alias tree='eza -T' # with -L={DEPTH} you can decide the depth of the recursion

alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'

alias ip='\ip -c'
alias ipa='\ip -c addr'

alias clockdvd='tty-clock -Sbra 75000000 -d 0'
# alias clock='tty-clock -Scbs'
alias clock='peaclock --config-dir ~/.config/peaclock'
alias peaclock='peaclock --config-dir ~/.config/peaclock'

alias matrix='neo-matrix'

alias neofetch='fastfetch'

alias actually="cowsay -f actually 'Ummm... Actually... '"
alias nerd='cowsay -f actually'

alias dotfiles='/usr/bin/git --git-dir=/home/kaio/.dotfiles --work-tree=/home/kaio'
alias dts='/usr/bin/git --git-dir=/home/kaio/.dotfiles --work-tree=/home/kaio'
alias dfs='/usr/bin/git --git-dir=/home/kaio/.dotfiles --work-tree=/home/kaio'

alias cd..='cd ..'

alias cls='clear'
alias c='clear'

alias v='vim'
alias n='nvim'
alias vi='nvim'
alias nano='micro'
alias evim='vim -yc "imap <C-S-q> <Esc>:q!<CR>"'
# alias nano='vim -yc "imap <C-S-q> <Esc>:q!<CR>"'

alias bashrc='nvim ~/.bashrc'
alias bs='nvim ~/.bashrc'
alias s='source ~/.bashrc'

alias pac='sudo pacman'

function colormap() {
    for c in {0..255}; do
        let "d=($c+3)%6"
        printf "\x1b[48;5;%dm  \x1b[49m\x1b[38;5;%dm%03d \x1b[0;37;40m" $c $c $c
        if [ "$d" -eq "0" ]; then echo ""; fi
    done;
    printf "\x1b[0m"
    echo
}

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init bash)"

export QT_QPA_PLATFORMTHEME=qt6ct

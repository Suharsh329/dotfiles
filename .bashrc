#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias bsh="nvim ~/.bashrc"
alias srcb="source ~/.bashrc"

alias py=python3
alias python=python3

alias c=tcc
alias cc=tcc
alias n=nnn
alias v=nvim
alias ll="ls -al"

alias i3="nvim ~/.config/i3/config"

alias gs="git status"
alias gp="git push"
alias gpl="git pull"
alias gc="git clone"
alias gch="git checkout"
alias ga="git add"
alias gad="git add ."
alias gcm="git commit -m"


alias zat=zathura
alias zatf="zathura --mode=fullscreen"

#Autocd
shopt -s autocd

#Get history based on input typed
if [[ $- == *i* ]]
then
	bind '"\e[A": history-search-backward'
	bind '"\e[B": history-search-forward'
fi

fortune -os | cowsay | lolcat

PATH=$PATH:~/scripts
PATH=$PATH:~/projects/hourglass

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

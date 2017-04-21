# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git aws docker terraform z)

source $ZSH/oh-my-zsh.sh
alias docker="sudo /usr/bin/docker"

TERM=xterm


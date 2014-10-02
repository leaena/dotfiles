export ZSH=$HOME/.oh-my-zsh

. $HOME/z.sh

ZSH_THEME="robbyrussell"

plugins=(git git-prompt git-fast textmate atom sublime brew common-aliases z virtualenvwrapper nyan)

source $ZSH/oh-my-zsh.sh

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd
unsetopt beep

autoload -Uz compinit
compinit

export PS1="[%~] "

alias g="git"
alias zrc="vim ~/.zshrc&&resource"
alias ls="ls -G"

alias lime="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

function resource () {
  source ~/.zshrc
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

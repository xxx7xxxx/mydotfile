export ZSH=$HOME/.oh-my-zsh
export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_ALL="en_US.UTF-8"
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export http_proxy=http://192.168.0.100:1087
export https_proxy=http://192.168.0.100:1087
export ZLE_REMOVE_SUFFIX_CHARS=""

plugins=(git brew docker httpie python pip sudo go autoenv autojump)

ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%} % %{$reset_color%}'
RPROMPT="%{${fg[cyan]}%}[%~]%{${reset_color}%}"

alias ag='ag --color-match 31\;'
alias l='ls -al --color=auto'
alias ll='ls -al --color=auto'
alias gg='cd ~/go/src'
alias m='make run'
alias mm='make test'
alias p='python3'
alias p3='python3'
alias vi='vim'
alias vim='nvim'
alias grep="grep --color=auto"
alias un='uname -a'

if [ $(uname -s) = "Darwin" ]; then
        if brew list | grep coreutils > /dev/null ; then
                export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
                export PATH="$(brew --prefix findutils)/libexec/gnubin:$PATH"
                alias ls='ls -F --show-control-chars --color=auto'
                eval `gdircolors -b $HOME/.dir_colors`
        fi
fi

if [ $(uname -s) = "Linux" ]; then
    export PATH=/usr/local/go/bin:$PATH
fi

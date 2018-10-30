STATIC_INTERNAL_IP=`ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'`
HTTP_PROXY=http://${STATIC_INTERNAL_IP}:1087
HTTP_PROXY=http://127.0.0.1:1087

export PATH=/Users/longyun/code/easestack/bin:${PATH}

plugins=(git brew docker docker-compose docker-machine \
         python pip sudo go autoenv autojump kubectl)

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%} % %{$reset_color%}'
RPROMPT="%{${fg[cyan]}%}[%~]%{${reset_color}%}"

export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_ALL="en_US.UTF-8"
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export http_proxy=${HTTP_PROXY}
export https_proxy=${HTTP_PROXY}
export HISTSIZE=10000000
export SAVEHIST=10000000
export ZLE_REMOVE_SUFFIX_CHARS=""


alias cat='bat'
alias find='fd'
alias l='exa -al'
alias ls='exa'
alias ll='exa -al'
alias gg='cd ~/go/src'
alias gs='git status'
alias vi='vim'
alias vim='nvim'
alias grep="grep --color=auto"
alias un='uname -a'

if [ $(uname -s) = "Darwin" ]; then
        if brew list | grep coreutils > /dev/null ; then
                export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
                export PATH="$(brew --prefix findutils)/libexec/gnubin:$PATH"
                export PATH=/usr/local/sbin:$PATH
                eval `gdircolors -b $HOME/.dir_colors`
        fi
fi

if [ $(uname -s) = "Linux" ]; then
    export PATH=/usr/local/go/bin:$PATH
fi

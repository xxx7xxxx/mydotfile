export ZSH=$HOME/.oh-my-zsh
export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_ALL="en_US.UTF-8"
export PATH=/usr/local/openresty/nginx/sbin:/usr/local/openresty/luajit/bin:$PATH
export http_proxy=http://localhost:8123
export https_proxy=http://localhost:8123

source $ZSH/oh-my-zsh.sh
plugins=(git brew docker httpie python pip sudo go autoenv autojump)

ZSH_THEME="robbyrussell"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%} % %{$reset_color%}'

alias p='python3'
alias p3='python3'
alias l='ls -al --color=auto'
alias ll='ls -al --color=auto'
alias lj='luajit'
alias m='make run'
alias mm='make test'
alias v='vim'
alias vi='vim'
alias vim='nvim'
alias grep="grep --color=auto"
alias un='uname -a'


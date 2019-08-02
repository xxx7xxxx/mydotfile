# OS Dedicated >>>
OS=osx # or linux

if [ $OS = "osx" ]; then
	HTTP_PROXY=http://127.0.0.1:1087
        if brew list | grep coreutils > /dev/null ; then
                export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
                export PATH="$(brew --prefix findutils)/libexec/gnubin:$PATH"
                export PATH=/usr/local/sbin:$PATH
                eval `gdircolors -b $HOME/.dir_colors`
        fi
else
	HTTP_PROXY=http://192.168.0.100:1087
	# NOTE: root can't execute brew.
	eval $(sudo -u xxx7xxxx brew shellenv)
	source $(sudo -u xxx7xxxx brew --prefix autoenv)/activate.sh
fi
# <<<


plugins=(vi-mode git brew docker go autoenv autojump kubectl history-substring-search)

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%} % %{$reset_color%}'
RPROMPT="%{${fg[cyan]}%}[%~]%{${reset_color}%}"
RPS1='$(vi_mode_prompt_info) '$RPS1

setopt HIST_IGNORE_ALL_DUPS
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE='yes'

export ETCDCTL_API=3
export HISTSIZE=10000000
export http_proxy=${HTTP_PROXY}
export https_proxy=${HTTP_PROXY}
export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_ALL="en_US.UTF-8"
export PATH=~/go/bin:$PATH
export SAVEHIST=10000000
export ZLE_REMOVE_SUFFIX_CHARS=""

alias cat='bat -p'
alias find='fd'
alias l='exa -al'
alias ls='exa'
alias ll='exa -al'
alias gg='cd ~/go/src'
alias vim='nvim'
alias vv='cd ~/.vim'
alias grep="grep --color=auto"
alias un='uname -a'

setopt rm_star_silent

bindkey -M vicmd 'H' beginning-of-line
bindkey -M vicmd 'L' end-of-line

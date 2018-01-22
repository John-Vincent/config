#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="\[\033[38;5;220m\][\[$(tput sgr0)\]\[\033[38;5;51m\]\u\[$(tput sgr0)\]\[\033[38;5;226m\]@\[$(tput sgr0)\]\[\033[38;5;160m\]\h\[$(tput sgr0)\]\[\033[38;5;21m\] \[$(tput sgr0)\]\[\033[38;5;51m\]\W\[$(tput sgr0)\]\[\033[38;5;220m\]]\[$(tput sgr0)\]\[\033[38;5;160m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
alias cleara='clear && clear'
alias vi='vim'
alias la='ls -a'

export PATH=$PATH:.:~/bin

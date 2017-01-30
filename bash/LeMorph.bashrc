###### Begin LeMorph  bashrc #######
#!/bin/sh

umask 0027
# alias lock='pyxtrlock'
# alias lock='xtrlock'

alias cp='cp'
alias mv='mv'
alias rm='rm'

# alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# alias ls='ls -G'   # mac osX
# alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'  # mac osX

alias ls='ls --color=auto'  # GNU/linux
alias ll='ls -la'
alias llf='ls -laF'
alias l.='ls -d .*'

alias vi='vim'
alias less='less -FXi'
# i is case insensitive when lower case only F is  quit 1 screen , E quit 2nd EOF,  X no cls
export HISTFILESIZE=1073741824
export HISTSIZE=1073741824
shopt -s histappend
#    export HISTTIMEFORMAT='%F %T '

# export PS1="\[\033[1;30m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD GREY
# export PS1="\[\033[1;31m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD RED
# export PS1="\[\033[1;32m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD GREEN
# export PS1="\[\033[1;33m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD YELLOW
# export PS1="\[\033[1;34m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD PURPLE
# export PS1="\[\033[1;35m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD PINK
# export PS1="\[\033[1;36m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD BLUE
# export PS1="\[\033[1;37m\][\u@\h \W]\$ \[\033[0m\]"   # BOLD WHITE
# export PS1="\[\033[1;31m\][\u@\h \W] λ \[\033[0m\]"   # BOLD RED λ


# export PS1="\[\033[30m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY GREY
# export PS1="\[\033[31m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY RED
# export PS1="\[\033[32m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY GREEN
# export PS1="\[\033[33m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY YELLOW
# export PS1="\[\033[34m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY PURPLE
# export PS1="\[\033[35m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY PINK
# export PS1="\[\033[36m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY BLUE
# export PS1="\[\033[37m\][\u@\h \W]\$ \[\033[0m\]"  # SKINNY WHITE
# export PS1="\[\033[31m\][\u@\h \W] λ \[\033[0m\]"  # SKINNY RED λ

# Italicized GIT Label for MAC
# export PS1="\[\033[1;31m\]\u@\h \W\[\033[0m\]\[\033[3;36m\]\$(__git_ps1)\[\033[0m\]\[\033[1;37m\]\$ \[\033[0m\]"   # RED
# export PS1="\[\033[1;32m\]\u@\h \W\[\033[0m\]\[\033[3;36m\]\$(__git_ps1)\[\033[0m\]\[\033[1;37m\]\$ \[\033[0m\]"   # GREEN
# Italicized GIT Label for Linux
# export PS1="\[\033[1;31m\]\u@\h \W\[\033[0m\]\[\033[1;36m\]\$(__git_ps1)\[\033[0m\]\[\033[1;37m\]\$ \[\033[0m\]"   # RED
# export PS1="\[\033[1;32m\]\u@\h \W\[\033[0m\]\[\033[1;36m\]\$(__git_ps1)\[\033[0m\]\[\033[1;37m\]\$ \[\033[0m\]"   # GREEN

## for screen ##

# alias screen='screen -e^Vv'     # ie use C-v instead of C-a
alias scr='screen -dRS'
alias sls='screen -ls'
alias mux='tmuxinator'

if [ -n "$STY" ]; then
        PS1='\[\033[1;32m\]''[$(echo $STY | cut -f 2- -d '.')]'-$PS1
fi
## for screen ##

export EDITOR=vim
export TERM=xterm-256color
set -o vi

alias ssh='ssh -oStrictHostKeyChecking=no'
alias scp='scp -oStrictHostKeyChecking=no'
alias ansible='ansible --ssh-common-args=-oStrictHostKeyChecking=no'
alias ansible-playbook='ansible-playbook --ssh-common-args=-oStrictHostKeyChecking=no'
# gc () { gcc -g -Wall $1 -o $(echo $1 | cut -d . -f 1) && ./$(echo $1 | cut -d . -f 1) ; }

###### End LeMorph  bashrc #######




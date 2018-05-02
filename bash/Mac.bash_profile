###### Begin LeMorph  bashrc #######

umask 0022
# alias lock='pyxtrlock'
# alias lock='xtrlock'

alias cp='cp'
alias mv='mv'
alias rm='rm'

# alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias pcat='pygmentize -f terminal256 -O style=native -g'  # needs pip install Pygments

alias ls='ls -G'   # mac osX
alias vscode='code'
alias jnb='jupyter lab --notebook-dir=/Users/al/Arnold/Scripts/Code/python&'
alias git='hub'

# alias ls='ls --color=auto'  # GNU/linux
alias ll='ls -la'
alias llf='ls -laF'
alias l.='ls -d .*'

# alias yank='yank-cli'
# alias yankw='yank -- xsel -b'
# alias yankl='yank -l -- xsel -b'

alias vi='vim'
alias less='less -FXi'
# i is case insensitive when lower case only F is  quit 1 screen , E quit 2nd EOF,  X no cls
export HISTFILESIZE=1073741824
export HISTSIZE=1073741824
shopt -s histappend
export HISTTIMEFORMAT='%F %T '

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


export PS1="\[\033[1;31m\]\h: \W\[\033[0m\]\[\033[3;36m\]\$(__git_ps1)\[\033[0m\]\[\033[1;37m\]\$ \[\033[0m\]"   # RED
# export PS1="\[\033[1;32m\]\u@\h \W\[\033[0m\]\[\033[3;36m\]\$(__git_ps1)\[\033[0m\]\[\033[1;37m\]\$ \[\033[0m\]"   # GREEN

# Italicized GIT Label for Linux
# export PS1='\[\033[1;31m\]\u@\h \W\[\033[36m\]$(__git_ps1)\[\033[37m\]\$ \[\033[0m\]'   # Ubuntu Red / Blue git/ White prompt

## for git/hub ##

## for screen ##

alias screen='screen -e^Vv -h 5000'     # ie use C-v instead of C-a
alias scr='screen -dRS'
alias sls='screen -ls'
alias mux='tmuxinator'

if [ -n "$STY" ]; then
        PS1='\[\033[1;32m\]''[$(echo $STY | cut -f 2- -d '.')]'-$PS1
fi
## for screen ##

export EDITOR=vim
export TERM=xterm-256color
# set -o vi

alias mosh='mosh --ssh="ssh -oStrictHostKeyChecking=no"'
alias ssh='ssh -oStrictHostKeyChecking=no'
alias scp='scp -oStrictHostKeyChecking=no'
alias ansible='ansible --ssh-common-args=-oStrictHostKeyChecking=no'
alias ansible-playbook='ansible-playbook --ssh-common-args=-oStrictHostKeyChecking=no'

gc () { gcc -g -Wall $1 -o $(echo $1 | cut -d . -f 1) && ./$(echo $1 | cut -d . -f 1) ; }
# pipU () { pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U ; }
## pipU () { pip freeze --local | tee pre_upgrade.txt | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U ; }
##  pip install Jinja2==2.8.1   # use as pipU

alias py='python3 -c "from ptpython.repl import embed; embed(globals(), locals())"'

# this sources files from /usr/local/etc/bash_completion.d/*
# using have() and _have() to conserver memory by only loading completions for files in path

source /usr/local/etc/bash_completion

## Custom sourcing 

test -e "/Users/al/profile.d/git-completion.sh" && source "/Users/al/profile.d/git-completion.sh"
test -e "/Users/al/profile.d/hub.bash_completion.sh" && source "/Users/al/profile.d/hub.bash_completion.sh"
test -e "/Users/al/profile.d/git-prompt.sh" && source "/Users/al/profile.d/git-prompt.sh"

test -e "/Users/al/profile.d/tmuxinator.bash" && source "/Users/al/profile.d/tmuxinator.bash"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/*.bash.inc

## Custom sourcing 

export HELM_HOME="/Users/al/.helm"
export GOPATH="/Users/al/Arnold/Scripts/Code/Go"
export GOHOME="$GOPATH/src/github.com/a12o"
export PATH=$PATH:$(go env GOPATH)/bin

###### End LeMorph  bashrc #######
alias mtr='sudo mtr'
alias iftop='sudo iftop'
alias htop='sudo htop'
alias azcopy='blobxfer'
alias vboxmanage='VBoxManage'
alias rsa='echo -n $(stoken tokencode) | pbcopy'

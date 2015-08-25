###########################################################        
# Options for Zsh

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=Fino-Time

# Online help support
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

source $ZSH/oh-my-zsh.sh
# Set up auto extension stuff
alias -s html=$BROWSER
alias -s org=$BROWSER
alias -s php=$BROWSER
alias -s com=$BROWSER
alias -s net=$BROWSER
alias -s png=feh
alias -s jpg=feh
alias -s gif=feg
alias -s sxw=soffice
alias -s doc=soffice
alias -s gz='tar -xzvf'
alias -s bz2='tar -xjvf'
alias -s java=$EDITOR
alias -s txt=$EDITOR
alias -s PKGBUILD=$EDITOR

# Normal aliases
alias ls='ls --color=auto -F'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias lla='ls -al'
alias f='find |grep'
alias c="clear"
alias dir='ls -1'
alias gvim='gvim -geom 82x35'
alias ..='cd ..'
alias ppp-on='sudo /usr/sbin/ppp-on'
alias ppp-off='sudo /usr/sbin/ppp-off'
alias firestarter='sudo su -c firestarter'
alias mpg123='mpg123 -o oss'
alias mpg321='mpg123 -o oss'
alias vba='/home/paul/downloads/VisualBoyAdvance -f 4'
alias hist="grep '$1' /home/paul/.zsh_history"
alias irssi="irssi -c irc.freenode.net -n yyz"
alias mem="free -m"
alias glog="git log --graph --format=\"%H %s %b <%cn> %cD\""
alias md="mkdir -p"
alias tmux="tmux -2"

# command L equivalent to command |less
alias -g L='|less' 

# command S equivalent to command &> /dev/null &
alias -g S='&> /dev/null &'

# Plugins
plugins=(git, python, pip, tmux, gnu-utils, history-substring-search, zsh-syntax-highlighting, ubuntu, docker, vi-mode, vim-interaction, cp)
# End of lines added by compinstall

export PATH="$PATH:$HOME/.rvm/bin:/usr/local/sbin" # Add RVM to PATH for scripting

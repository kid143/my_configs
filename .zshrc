###########################################################        
# Options for Zsh

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=robbyrussell
DEFAULT_USER=kid143@RX78-2

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
alias ls='ls -FG'
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
alias md="mkdir -p"
alias tmux="tmux -2"

# command L equivalent to command |less
alias -g L='|less' 

# command S equivalent to command &> /dev/null &
alias -g S='&> /dev/null &'

# Plugins
plugins=(brew, brew-cask, coffee, node, git, python, pip, gnu-utils, history-substring-search, zsh-syntax-highlighting, ubuntu, docker, vi-mode, vim-interaction, cp)
# End of lines added by compinstall

export PATH="$PATH:$HOME/.rvm/bin:$HOME/bin" # Add RVM to PATH for scripting

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/kid143/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

# Homebrew 0.9.9 above requires new config
export HOMEBREW_GITHUB_API_TOKEN="712bef17bb624a8a15ef4c481c0af5e7e4f7330a"
# Powerline prompt
ps x | grep "powerline-daemon" | grep -v grep > /dev/null
if [ $? -ne 0 ]; then
    powerline-daemon -q
fi
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Virtualenvwrapper
export WORKON_HOME=~/python_envs
source `which virtualenvwrapper.sh`

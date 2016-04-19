###########################################################
# Options for Zsh

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=robbyrussell
DEFAULT_USER=kid143@RX78-2

# Plugins
# zsh-syntaxhighlighting need to be install in $HOME/.oh-my-zsh/custom/plugins/ and so do zsh-autosuggestions before using this script
# use coreutils's gls for ls alias for better colorization. 
# Could use https://github.com/trapd00r/LS_COLORS.git for color profile
# See $HOME/.oh-my-zsh/custom/lib/theme-and-appearance.zsh for detail.
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

plugins=(common-aliases command-not-found osx brew brew-cask coffee node git colored-man-pages docker vi-mode vim-interaction zsh-syntax-highlighting colorize history-substring-search zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# End of lines added by compinstall

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/kid143/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

# Homebrew 0.9.9 above requires new config
. $HOME/.homebrew_github_api

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

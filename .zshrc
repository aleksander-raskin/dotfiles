export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/Users/raskin/.oh-my-zsh

plugins=(git docker docker-compose helm zsh-autosuggestions colored-man-pages cp z terraform)

source $ZSH/oh-my-zsh.sh
source ~/.contentsquare
source ~/.zshenv
source ~/.zshalias
source ~/.zshplugins
source ~/.zshpy
source ~/.zshgo
source ~/.zsh_functions

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

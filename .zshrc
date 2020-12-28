# zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/Users/raskin/.oh-my-zsh

plugins=(git docker docker-compose zsh-autosuggestions cp z terraform)

source $ZSH/oh-my-zsh.sh
source ~/.contentsquare
source ~/.zshenv
source ~/.zshalias
source ~/.zshplugins
source ~/.zshpy
# source ~/.zshgo
source ~/.zsh_functions
source ~/contentsquare/git/dev-toolbox/setup-workstation/aws-ssh.sh

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zprof

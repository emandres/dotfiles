autoload -U compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
  'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

autoload -U colors && colors
PROMPT="%{$fg[blue]%}%~ %{$fg[green]%}%# %{$reset_color%}"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias tmux="TERM=screen-256color tmux"

eval `dircolors ~/.dir_colors`
export EDITOR=vim
bindkey -e

SCALA_HOME=/usr/local/share/scala-2.11.0
PATH=$PATH:~/bin:$SCALA_HOME/bin

alias ls='ls --color'

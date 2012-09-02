# add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export editor=vim

# show working branch in status
#PS1='\[\033[01;36m\]\W\033[00;34m\]$(__git_ps1 "|%s")\033[00m\] \$ '
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# shortcut aliases
alias reset="source $HOME/.bashrc && clear"
alias la="ls -al"
alias ll="ls -l"
alias ..="cd .."
alias :q="exit"
alias vi="vim"
alias pdf="evince"

# asthetics aliases
alias ls="ls -G"
alias jshint="clear; jshint"
alias node="clear; node"
alias coffee="clear; coffee"
alias ack="clear; ack --before-context=2 --after-context=2 --color-filename=blue"

# 256 colors in tmux
alias tmux="tmux -2"

# start and stop postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# start tmux on startup
#if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#    tmux attach || tmux new; exit
#fi

# git branches autocomplete script, require .git-completion.bash in ~
source ~/.dotfiles/scripts/git-completion.bash

# git aliases
get_git_branch() {
	  echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)//'`
  }
alias gc='git commit -am'
alias gs='git status'

# Pushes current branch only
alias gps='git push origin `get_git_branch`'

# Pulls current branch only
alias gpl='git pull origin `get_git_branch`'
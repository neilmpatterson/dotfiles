#!/bin/sh
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='nvim ~/.config/nvim/'
alias nvimz='nvim ~/.dotfiles/zsh/.zshrc'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes

# ---- Eza (better ls) -----
alias ld='eza -lD --color=always --git --icons=always --no-permissions'
alias lf='eza -lf --color=always --git --icons=always --no-permissions| grep -v /'
alias lh='eza -dl .* --color=always --git --icons=always --no-permissions --group-directories-first'
alias ll='eza -al --color=always --git --icons=always --no-permissions --group-directories-first'
alias ls='eza -al --color=always --git --icons=always --no-permissions  --sort=size | grep -v /' 
alias lt='eza -al --color=always --git --icons=always --no-permissions --sort=modified'

# Lazygit
alias g='lazygit'

# Neovim
alias v=nvim
alias vim=nvim

# Tmux
alias t=tmux
alias mux=tmuxinator

# Obsidian
alias oo='cd $HOME/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Work'
alias or='nvim inbox/*.md' # ALERT: only after running oo cmd

# Dir list, nav
alias pwdy="echo $(pwd) | pbcopy"
alias cl="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Git
alias gs='git status'
alias ga='git add .'
gm() { git commit -m "$1" }
gco() { git checkout "$1" }
alias gp='git push'

# JRuby - usage: $ jr rails s
jr() {
  jruby --debug -J-Xmn1G -J-Xms1G -J-Xmx4g -S "$@"
}

# Connecting to Composer pod (Rails console)
#	https://finalsiteinc.atlassian.net/wiki/x/LADLK
#	One way is to use this composerexec function, which takes in context as first parameter, and tenant name as second parameter
#	sample usage is:
#	composerexec gke_east_dev classicmobileapp
composerexec () {
	command=${3:-'jruby -G -S bin/rails c'}
	podname=$(kubectl get pods --namespace $2 --context $1 | grep 'front-end' | cut -f1 -d' ' | tail -n1)
	echo "kubectl exec -it -c composer --namespace $2 $podname --context $1 -- $command"
	eval "kubectl exec -it -c composer --namespace $2 $podname --context $1 -- $command"
}

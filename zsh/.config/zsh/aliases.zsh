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
alias ls='eza -alf --color=always --git --icons=always --no-permissions  --sort=size | grep -v /'
alias lt='eza -al --color=always --git --icons=always --no-permissions --sort=modified'

# Neovim
alias v=nvim
alias vim=nvim

# Tmux
alias t=tmux

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
alias gp='git push'

# JRuby - usage: $ jr rails s
jr() {
  jruby --debug -J-Xmn1G -J-Xms1G -J-Xmx4g -S "$@"
}

# CLI Pomodoro Timers
# Requires https://github.com/caarlos0/timer to be installed
# Requires https://github.com/julienXX/terminal-notifier to be installed
# brew install caarlos0/tap/timer
# brew install terminal-notifier
focus() {
	local duration="${1:-25m}"  # Use the provided duration argument or default to 25m
	timer "$duration" && terminal-notifier -message 'Pomodoro'\
        -title 'Focus Timer is up! Take a Break 😊'\
        -sound Crystal
}        
alias rest="timer 5m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Focus on something new 😬'\
        -sound Crystal"

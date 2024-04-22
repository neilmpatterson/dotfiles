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
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# Neovim
alias v=nvim
alias vim=nvim

# Tmux
alias t=tmux

# Obsidian
alias oo='cd $HOME/library/Mobile\ Documents/iCloud~md~obsidian/Documents/Work'
alias ooh='cd $HOME/library/Mobile\ Documents/iCloud~md~obsidian/Documents/Personal'
alias or='vim $HOME/library/Mobile\ Documents/iCloud~md~obsidian/Documents/Work/inbox/*.md'
alias orh='vim $HOME/library/Mobile\ Documents/iCloud~md~obsidian/Documents/Personal/inbox/*.md'
# alias ou='cd $HOME/notion-obsidian-sync-zazencodes && node batchUpload.js --lastmod-days-window 5'

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
alias ga='git add -u'
gm() { git commit -m "$1" }
alias gp='git push'

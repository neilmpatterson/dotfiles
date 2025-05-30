#!/bin/sh
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='nvim ~/.config/nvim/'
alias nvimz='nvim ~/.dotfiles/zsh/.zshrc'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Override ripgrep to always search hidden files
alias rg="rg --hidden --glob '!.git'"

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
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS path
	alias oo='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/notes/Work'
else
    # Linux path
    alias oo='cd $HOME/Documents/notes/Work'
fi
alias or='nvim 0\ Inbox/*.md' # ALERT: only after running oo cmd

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
  jruby --debug -J-Xmn2G -J-Xms2G -J-Xmx6g -S "$@"
}


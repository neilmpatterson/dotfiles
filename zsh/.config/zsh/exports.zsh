#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="nvim"
export PATH="$HOME/.local/bin":$PATH
export MANWIDTH=999
export PATH="$HOME/.local/share/neovim/bin":$PATH
export PATH="/usr/bin/node":$PATH
#export PATH="$PATH:./node_modules/.bin"
# eval "`pip completion --zsh`"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
export PATH="/home/neil/.local/share/fnm:$PATH"
eval "`fnm env`"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/neil.patterson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/neil.patterson/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/neil.patterson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/neil.patterson/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


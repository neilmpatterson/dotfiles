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
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/mongodb-community@5.0/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/neil.patterson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/neil.patterson/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/neil.patterson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/neil.patterson/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"


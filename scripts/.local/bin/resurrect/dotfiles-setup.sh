#!/bin/bash

ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/neilmpatterson/dotfiles"
REPO_NAME="dotfiles"


is_stow_installed() {
  pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

# Check if the clone was successful
if [ $? -eq 0 ]; then
  cd "$REPO_NAME"
  stow zsh
  stow nvim
  stow vim
  stow fastfetch
  stow kitty
else
  echo "Failed to clone the repository."
  exit 1
fi


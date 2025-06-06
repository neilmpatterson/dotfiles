# dotfiles for my z shell and nvim setup

This project just maintains my vim, nvim and zsh config and other configurations I'd like to share across computers.
At one time, this was based on Christian Chiarulli's [machfiles repo](https://github.com/ChristianChiarulli/Machfiles) and his [lunarvim basic ide](https://github.com/LunarVim/nvim-basic-ide).
However now, I have used a lot of the foundation from Josean Martinez's [nvim setup guide](https://www.josean.com/posts/how-to-setup-neovim-2024)

## Prerequisites: when setting up a new machine

setup git and clone this repo into your home dir, then install the following using which ever package manager makes sense:

1. Install Homebrew, iTerm2 and Nerd Fonts and other dependencies

If you don’t have a true color terminal, install iTerm2 with homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask iterm2
brew install neovim
brew install ripgrep
brew install node
brew install fzf 
brew install fd 
brew install bat 
brew install eza 
brew install pyenv
brew install --cask font-meslo-lg-nerd-font
brew install stow
```

Then open iTerm2 settings with CMD+, and under Profiles > Text change the font to MesloLGS Nerd Font Mono

1. Install gnu stow (already installed above with brew) 
   once installed cd into dotfiles and run `stow */`

2. Install vim-plug (for regular .vimrc config) https://github.com/junegunn/vim-plug
   once installed start vim with `vim ~/.vimrc` and run `:PlugInstall` and restart vim

3. Install zap-zsh https://github.com/zap-zsh/zap
   once installed you can `source ~/.zshrc`

4. Install tpm (tmux plugin manager)

Run the following:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

once installed you can `source ~/.tmux.conf`

5. Install fzf https://github.com/junegunn/fzf

6. Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [nvm](https://github.com/Schniz/fnm).

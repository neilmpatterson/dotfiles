# dotfiles for my z shell and nvim setup

This project just maintains my vim, nvim and zsh config and other configurataions I'd like to share across computers. This is based on Christian Chiarulli's [machfiles repo](https://github.com/ChristianChiarulli/Machfiles) and his [lunarvim basic ide](https://github.com/LunarVim/nvim-basic-ide). 

## Prerequisites: when setting up a new machine

setup git and clone this repo into your home dir, then install the following using which ever package manager makes sense:

1. Install gnu stow https://savannah.gnu.org/git/?group=stow
   once installed cd into dotfiles and run `stow */`

2. Intall zap-zsh https://github.com/zap-zsh/zap
   once installed you can `source ~/.zshrc`

3. Install vim-plug (for regular .vimrc config) https://github.com/junegunn/vim-plug
	 once installed start vim with `vim ~/.vimrc` and run `:PlugInstall` and restart vim

4. Install fzf https://github.com/junegunn/fzf

5. Install fnm for installing node and npm https://github.com/Schniz/fnm

6. Install phython3 pip (`sudo apt install python3-pip` or https://pip.pypa.io/en/stable/installation/)

7. Install Neovim 0.8 from source:

**NOTE** Verify the required [build prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites) for your system.

```sh
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout release-0.8
make CMAKE_BUILD_TYPE=Release
sudo make install
```

8. Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).



## Dotstuffs

Firstly, make sure you've installed [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#via-curl).




## Neovim stuffs
### Setting up of nvim plugins:

I am using [vim-plug](https://github.com/junegunn/vim-plug) as a plugin manager for vim.

1. Make sure that symlinks are created

2. [Setup up vim-plug](https://github.com/junegunn/vim-plug#installation) by running commands:

  ```bash
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

3. Get vundle to install always used plugins

    Launch nvim and run `:PlugInstall`

### Installing plugins for vim

Open `bundles.vim` in `dotfiles`(`homesick cd dotfiles`) folder and add the plugin you want.

Then launch vim and run `:PluginInstall`

## Homebrew stuff

Make sure you've installed [Homebrew](http://brew.sh/#install).

Install [RCM](https://github.com/thoughtbot/rcm)

### setup dotfiles!
```
git clone https://github.com/steve0hh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rcup -d home
```

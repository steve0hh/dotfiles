# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.homesick/repos/dotfiles/oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew gem rbenv rails bundler git zeus tmuxinator mix)


source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# use ~/dotfiles/oh-my-zsh-custom as custom folder
export EDITOR='nvim'
#enable cursor switching for nvim
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# Ensure user-installed binaries take precedence
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# rbenv configs
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Docker settings
# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH=/Users/stevetan/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1

# zeus temporary workaround for broken carriage return
# https://github.com/burke/zeus/issues/137
z() { zeus $*; stty sane }

# tmux configurations
export DISABLE_AUTO_TITLE=true

# fix slow git problem on large repos
function git_prompt_info() {
ref=$(git symbolic-ref HEAD 2> /dev/null) || return
echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}${ZSH_THEME_GIT_PROMPT_CLEAN}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
}

export NVM_DIR="/Users/Steve/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
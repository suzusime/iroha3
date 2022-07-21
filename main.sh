#!/bin/sh

# set env temporally
XDG_DATA_HOME="$HOME/.local/share"
XDG_CONFIG_HOME="$HOME/.config"
mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_CONFIG_HOME/log

# install homeshick
git clone https://github.com/andsens/homeshick.git $XDG_DATA_HOME/homesick/repos/homeshick

# download the castle
$XDG_DATA_HOME/homesick/repos/homeshick/bin/homeshick clone suzusime/shijo

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $XDG_DATA_HOME/zsh/zsh-autosuggestions

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git $XDG_DATA_HOME/fzf
$XDG_DATA_HOME/fzf/install --xdg --no-fish --no-bash --completion --key-bindings --no-update-rc

# install anyenv
git clone https://github.com/anyenv/anyenv $XDG_DATA_HOME/anyenv
$XDG_DATA_HOME/anyenv/bin/anyenv init

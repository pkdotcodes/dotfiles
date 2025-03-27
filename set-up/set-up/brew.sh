#!/bin/bash

## Install script for Homebrew under MacOS
packages=(
  "nikitabobko/tap/aerospace"
  "sketchybar"
  "1password"
  "man"
  "neovim"
  "btop"
  "fastfetch"
  "obsidian"
  #"obs"
  #"tree"
  "vlc"
  "node"
  #"lf"
  #"thunderbird"
  #"php"
  #"composer"
  #"docker" #install docker desktop via brew install --cask docker
  #"docker-compose"
  "fish"
  "starship"
  "stow"
  "spotify"
  "localsend"
  #"rectangle"
  #"eza"
  #"zoxide"
  "zellij"
  "ripgrep"
  "fd"
  "fzf"
)

brew tap localsend/localsend
brew tap FelixKratz/formulae

for package in "${packages[@]}"; do
  echo "Installing $package"
  brew install "$package"
done

#run post install hooks
#defaults write com.apple.dock autohide -bool true; killall Dock
#defaults write NSGlobalDomain _HIHideMenuBar -bool true; killall SystemUIServer

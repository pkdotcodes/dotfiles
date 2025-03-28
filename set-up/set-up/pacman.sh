#!/bin/bash
packages=(
  "amd-ucode"
  "man-db"
  "man-pages"
  "texinfo"
  "newsflash"
  "firefox"
  "timeshift"
  "nemo"
  "man"
  "waybar"
  "stow"
  "neovim"
  "hypridle"
  "bluez"
  "bluez-utils"
  "brightnessctl"
  "guvcview"
  "libappindicator-gtk3"
  "hyprpaper"
  "cmatrix"
  "btop"
  "fastfetch"
  "hyprlock"
  "ttf-nerd-fonts-symbols-mono"
  "ttf-jetbrains-mono"
  "ttf-jetbrains-mono-nerd"
  "noto-fonts"
  "noto-fonts-emoji"
  "noto-fonts-cjk"
  "noto-fonts-extra"
  "power-profiles-daemon"
  "obsidian"
  "wl-clipboard"
  "tree"
  "yt-dlp"
  "vlc"
  "ffmpegthumbnailer"
  "e2fsprogs"
  "veracrypt"
  "unrar"
  "nodejs"
  "npm"
  "lf"
  "eog"
  "pavucontrol"
  "exfatprogs"
  "thunderbird"
  "nemo-fileroller"
  "discord"
  "php"
  "composer"
  "docker"
  "docker-compose"
  "fish"
  "starship"
  "electrum"
  "tmux"
  "ghostty"
  "eza"
  "zoxide"
  "zellij"
  "swaync"
  "fzf"
  "nvtop" #like htop but for gpu
  "powertop"
  # NeoVIM
  "ripgrep"
  "fd"
  #For power-profiles-daemon
  "python-gobject"
  #QEMU/KVM/VirtManager
  "qmu"
  "virt-manager"
  "virt-viewer"
  "dnsmasq"
  "vde2"
  "bridge-utils"
  "openbsd-netcat"
  "libguestfs"
)

for package in "${packages[@]}"; do
  echo "Installing $package"
  sudo pacman --needed --noconfirm -S "$package"
done

#run post install hooks
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now power-profiles-daemon.service
sudo systemctl enable --now docker.service
sudo systemctl enable --now libvirtd
sudo usermod -a -G libvirt $USER
sudo usermod -a -G docker $USER
gsettings set org.gnome.desktop.privacy remember-recent-files false

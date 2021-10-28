#!/bin/bash

# Update packages
sudo pacman --noconfirm -Syyu
yay -Syu

# Clear Package Manager caches
sudo pacman --noconfirm -Sc
yay -Sc

# More agressive commands
sudo pacman --noconfirm -Scc
yay --noconfirm -Scc

# Remove unwanted dependencies
yay --noconfirm -Yc

# Checking orphan packages
sudo pacman --noconfirm -Rns $(pacman -Qdtq)

# Removing cache directory
sudo rm -rf ~/.cache/*

# Resetting the image
wal -i ~/.config/wallpaper.png

# Clearning swap memory
sudo swapoff -a && sudo swapon -a

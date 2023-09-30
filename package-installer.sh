#!/bin/bash

packages = (
  kitty
  neofetch
  fish
  terminator
  tree
  lynx
  git
  neovim
  wine
  gimp
  krita
  ranger
  fim
  audacity
  flatpak
  imagemagick
  wfuzz
  cmatrix
  lua-luv
  neovim-runtime
  python3-greenlet
  python3-msgpack
  python3-neovim
  python3-pynvim
  glow
  htop
  lutris
)

sudo apt update 

sudo apt install -y "${packages[@]}"
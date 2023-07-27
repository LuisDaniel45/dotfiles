#!/bin/sh 

mv .zshrc ~/
mv .xinit ~/
mv  nvim ~/.config/ 
mv  nvim.local ~/.local/share/nvim 
mv  wallpaper ~/.config/ 
mv  suckless ~/.config/ 

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

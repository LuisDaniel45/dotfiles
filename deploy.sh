#!/bin/sh 

mv .zshrc ~/
mv .xinitrc ~/
mv  nvim ~/.config/ 
mv  nvim.local ~/.local/share/nvim 
mv  wallpaper ~/.config/ 
mv  suckless ~/.config/ 
mv  JetBrains-Mono-Nerd-Font-Complete-Bold.ttf ~/.local/share/fonts/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim



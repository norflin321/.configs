#!/bin/sh
cp -R ~/.zshrc .
cp -R ~/.config/kitty .
cp -R ~/.config/nvim .
git add .
git commit -m "update"
git push

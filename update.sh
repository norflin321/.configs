#!/bin/sh

git rm --ignore-unmatch -rf ./ghostty
cp -R ~/.config/ghostty ./

git rm --ignore-unmatch -rf ./nvim
cp -R ~/.config/nvim ./

git rm --ignore-unmatch .zshrc
cp ~/.zshrc ./

git rm --ignore-unmatch .gitconfig
cp ~/.gitconfig ./

git rm --ignore-unmatch -rf ./zed
mkdir ./zed
cp -R ~/.config/zed/settings.json ./zed/
cp -R ~/.config/zed/keymap.json ./zed/
cp -R ~/.config/zed/themes ./zed/

git add . && git commit -m "..." && git push
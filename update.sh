#!/bin/sh

git rm --ignore-unmatch -rf ./ghostty
cp -R ~/.config/ghostty ./

git rm --ignore-unmatch -rf ./nvim
cp -R ~/.config/nvim ./

git rm --ignore-unmatch .zshrc
cp ~/.zshrc ./

git rm --ignore-unmatch .gitconfig
cp ~/.gitconfig ./

git add . && git commit -m "..." && git push

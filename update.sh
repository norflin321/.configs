#!/bin/sh

git rm --ignore-unmatch .zshrc
git rm --ignore-unmatch .gitconfig
git rm --ignore-unmatch -rf ./nvim
git rm --ignore-unmatch -rf ./ghostty
git rm --ignore-unmatch -rf repoavg.sh
git rm --ignore-unmatch -rf ./zed/settings.json
git rm --ignore-unmatch -rf ./zed/keymap.json
git rm --ignore-unmatch -rf ./zed/themes

cp ~/.zshrc ./
cp ~/.gitconfig ./
cp -R ~/.config/nvim ./
cp -R ~/.config/ghostty ./
cp ~/.config/repoavg.sh ./
cp -R ~/.config/zed/settings.json ./zed/
cp -R ~/.config/zed/keymap.json ./zed/
cp -R ~/.config/zed/themes ./zed/themes

git add . && git commit -m "update" && git push

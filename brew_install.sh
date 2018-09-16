#!/bin/sh

# homebrewを入れる
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 必要なやつ入れる
brew install zsh

# ricty
brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# 必要なアプリ入れる
brew cask install appcleaner dropbox google-chrome google-japanese-ime keepassx keybase intellij-idea onyx slack sourcetree vlc

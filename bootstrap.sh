#!/usr/bin/env bash

git pull origin master;

OS=`uname`

read -p "Would you like to install ZSH? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    curl -L http://install.ohmyz.sh | sh;
fi;

if [[ "$OS" == "Darwin" ]]; then
    read -p "Would you like to install Brew? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";
    fi;

    read -p "Would you like to install OSX defaults? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        source .osx;
    fi;
fi;

read -p "Would you like to install spf13-vim? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sh <(curl https://j.mp/spf13-vim3 -L);
fi;

read -p "This will overwrite any existing dot files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rsync --exclude ".git/" --exclude "Mac/" --exclude ".DS_Store" --exclude ".osx" --exclude "bootstrap.sh" --exclude "readme.markdown" -avh --no-perms . ~;
else
    echo "No changes have been made, exiting.";
fi;

unset OS;
unset REPLY;
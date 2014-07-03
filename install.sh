#!/usr/bin/env bash

git pull origin master;

read -p "This will overwrite any existing dot files and set the system defaults defined in .osx. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rsync --exclude ".git/" --exclude "Sublime/" --exclude ".DS_Store" --exclude "Solarized Dark.terminal" --exclude "install.sh" --exclude "readme.markdown" -avh --no-perms . ~;
else
    echo "No changes have been made, exiting.";
fi;
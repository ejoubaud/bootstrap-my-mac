#!/bin/bash

sudo easy_install pip
sudo pip install battleschool

if [ ! -e ~/.battleschool ]; then
  cp -r battlescool ~/.battleschool
else
  echo "~/.battleschool already exists"
fi

battle -K -C

echo; echo
echo "Feel free to launch Dropbox installer now. You'll need it sooner rather than later to restore Mackup config"
echo; echo

xcode-select --install

echo
echo "About to run Mackup, so now would be a good time to run Dropbox Installer"
echo "Press return when Mackup is loaded in Dropbox, or ctrl+c to leave the setup"
read

if [ ! -e ~/.mackup.cfg ]; then
  cp .mackup.cfg ~/.mackup.cfg
  mackup restore
else
  echo "~/.mackup.cfg already exists, skipping"
fi

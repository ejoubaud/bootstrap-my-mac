#!/bin/bash

# Instal ansible if not already there
which ansible &> /dev/null || brew install ansible

playbook="playbooks/$USER.yml"
if [ ! -f "$playbook" ]; then
  echo "No playbook matching current user $playbook" 1>&2
  echo "You must provide a playbook matching current user in $PWD/$playbook" 1>&2
  exit 1
fi
ansible-playbook -K -i 'localhost,' --connection=local "$playbook"


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

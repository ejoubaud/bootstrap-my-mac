# My Battleschool

Uses [Ansible](http://www.ansible.com/) and [Mackup](https://github.com/lra/mackup/) to bootstrap an OSX computer.

# Usage

```bash
git clone https://github.com/ejoubaud/bootstrap-my-mac
cd bootstrap-my-mac
# Prepare to type your sudo password and manually complete Dropbox install before Mackup is run
./bootstrap.sh
```

# Requirements

It assumes your Mac has ansible or homebrew installed (it uses homebrew to install ansible if it's not there)

This current version also assumes you have an existing Mackup dump stored in `~/Dropbox/Applications/Mackup` (or at least will have one once Dropbox is done installing and syncing through the process), though it *should* work fine without that.

# Add users

The bootstrap script will look for a playbook called like the current user, i.e. `playbooks/$USER.yml`

# FAQ

Why have your conf files on Dropbox instead of Git?

Coz' Mackup stores a variety of things that you may not want to see publicly exposed on Github (hopefully no sensitive secrets, those shouldn't be on Dropbox either, but for instance xclip snippets may contain context-specific SQL queries or canned answers you may not be comfortable with the whole world).

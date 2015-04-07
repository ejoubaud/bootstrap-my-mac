# My Battleschool

Uses [Ansible](http://www.ansible.com/)-based [Battleschool](https://github.com/spencergibb/battleschool) and [Mackup](https://github.com/lra/mackup/) to bootstrap an OSX computer.

# Usage

```bash
git clone https://github.com/ejoubaud/bootstrap-my-mac
cd bootstrap-my-mac
# Prepare to type your sudo password and manually complete Dropbox install before Mackup is run
./bootstrap-my-mac
```

# Requirements

It assumes your Mac comes pre-installed with Python package manager `easy_install`, which it should (used to instal `pip`, which installs `battleschool`, which should install all the rest).

This current version also assumes you have an existing Mackup dump stored in `~/Dropbox/Applications/Mackup` (or at least will have one once Dropbox is done installing and syncing through the process), though it *should* work fine without that.

# FAQ

Why have your conf files on Dropbox instead of Git?

Coz' Mackup stores a variety of things that you may not want to see publicly exposed on Github (hopefully no sensitive secrets, those shouldn't be on Dropbox either, but for instance xclip snippets may contain context-specific SQL queries or canned answers you may not be comfortable with the whole world).

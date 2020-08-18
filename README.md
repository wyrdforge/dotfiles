# Dotfiles management with Dotbot

## Base setup

This is more or less a reminder to myself, how I set things up initially:

* Add Dotbot as submodule to dotfiles folder:
```
cd ~/.dotfiles # replace with the path to your dotfiles
git init # initialize repository if needed
git submodule add https://github.com/anishathalye/dotbot
git config -f .gitmodules submodule.dotbot.ignore dirty # ignore dirty commits in the submodule
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml
```

* Move dotfiles and dirs

* Configure Dotbot in install.conf
 

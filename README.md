# George does dotfiles

Full details from here: https://github.com/holman/dotfiles

## Extra

YouCompleteMe requries a bit of manual config that's dependent on your OS, I haven't gotten around to doing this myself:
https://github.com/Valloric/YouCompleteMe

## install

Run this:

```sh
git clone https://github.com/dgmp88/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.


## thanks

Thanks Holman! https://github.com/holman/dotfiles

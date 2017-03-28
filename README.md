# singular0 dotfiles

My dotfiles for Arch Linux and Mac OS X.

## Installation

First install [Homesick](https://github.com/technicalpickles/homesick) (you will also need Ruby for that):

```
gem install --user-install homesick
```

Then download dotfiles:

```
$(ruby -rubygems -e 'puts Gem.user_dir')/bin/homesick clone singular0/dotfiles
```

And finally symlink them to your home dir:

```
$(ruby -rubygems -e 'puts Gem.user_dir')/bin/homesick symlink dotfiles
```

## Inspiration

https://github.com/gf3/dotfiles

# dotfiles

## Setup

Run:

```bash
git clone https://github.com/ljcesca/dotfiles.git ~/dotfiles
cd ~/dotfiles
script/bootstrap
```

This symlinks the appropriate files in dotfiles to your home directory. Everything is configured and tweaked within `~/dotfiles`.

The main file to change is `zsh/zshrc.symlink`, which sets up a paths that'll be different on your particular machine.

`dot` is a script that installs some dependencies, sets sane macOS defaults, and so on. Tweak this script, and occasionally run it to keep your environment up-to-date. You can find this script in `bin/`.

## components

There are a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## Thanks

These are based heavily on [Zach Holman's](https://zachholman.com) [dotfiles](https://github.com/holman/dotfiles).
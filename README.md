# My dotfiles

These are the dotfiles of [@torbjoernk](http://github.com/torbjoernk) for:

- zsh
- vim
- Ruby/irb
- rvm

Under `dotfiles/bin` there are some useful scripts and tools.

## Usage

    git clone https://github.com/pfleidi/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ./bootstrap.sh

See `./boostrap.sh help` for useful arguments to that script.

## Installed frameworks

- [OH-MY-ZSH](https://github.com/robbyrussell/oh-my-zsh)
- [RVM](http://beginrescueend.com/rvm/)
- [vundle](https://github.com/gmarik/vundle)

## Custom PATHs

The dotfiles bundle does contain some custom `PATH` settings
Please check `zshrc` for them.

## Local Overrides

Local ZSH settings can be overridden by creating a `~/.zshrc.local` file:

    # Override theme
    export ZSH_THEME="candy"
    # Override plugins
    plugins=(dirpersist git npm deb debian rvm gem)

## Source

The dotfile repo is based on [@pfleidi's](http://github.com/pfleidi/dotfiles).
The vim configuration and plugins are partly taken from
[@krisleech](https://github.com/krisleech/vimfiles) and modified to fit my
needs.

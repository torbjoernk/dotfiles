#!/bin/bash

dir=$(dirname $0)
dotdir=$($dir/bin/realpath $dir)

if [ $1 = "help" ]; then
  printf "***\n"
  printf "Script For Setting Up Dotfiles\n"
  printf "\n"
  printf "Usage:\t./bootstrap.sh [options]\n"
  printf "\n"
  printf "\thelp              - this help message\n"
  printf "\tlinking           - creates dotfiles in $HOME linking to files in this folder\n"
  printf "\tohmyzsh           - installes/updates oh-my-zsh\n"
  printf "\tvim               - installes vim bundles defined in dotfiles/vim/bundles.vim\n"
  printf "\trvminstall        - installes/updates rvm\n"
  printf "\trvmsetup          - updates rvm and installes default Ruby version (1.9.2-p318)\n"
  printf "\n"
  printf "The different options (except 'help') can be combined, separated by space.\n"
  printf "\te.g.:\t./bootstrap.sh linking ohmyzsh vim rvminstall\n"
  exit
fi

for option in $*
do
if [ $option = "linking" ]; then
  for file in $dotdir/*; do
    filename=$(basename $file)
    dotfile=$HOME/.$filename

    # exclude files
    if [ $filename = $(basename $0) ]; then continue; fi
    if [ $filename = "README.md" ]; then continue ; fi
    if [ $filename = "rvm" ]; then continue; fi

    if [ -e $dotfile ]; then
      if [ -L $dotfile ]; then
        printf "$dotfile is already a link!\n"
      else
        printf "$dotfile already exists. Remove it!\n"
      fi
    else
      printf "Linking $dotfile to $file\n"
      ln -s $file $dotfile
    fi
  done
fi

if [ $option = "ohmyzsh" ]; then
  # set up zsh shell environment
  if [ -d $HOME/.oh-my-zsh ]; then
    printf "OH-MY-ZSH is already installed, only updating ...\n"
    zsh $HOME/.oh-my-zsh/tools/upgrade.sh
  else
    printf "Installing OH-MY-ZSH\n"
    git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
  fi
fi

if [ $option = "rvminstall" ]; then
  # Installing/updating rvm
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
fi

if [ $option = "vim" ]; then
  # Install vim bundles
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  vim -u ~/.vim/bundles.vim +BundleInstall +q +q
fi

if [ $option = "rvmsetup" ]; then
  # This part will set up a basic Ruby environment with RVM

  # install (or update) RVM
  printf "Installing / updating RVM ...\n"
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

  # install the standard Ruby version
  printf "Installing Ruby 1.9.2-p320 ...\n"
  rvm install ruby-1.9.2-p320
  # create alias for this
  rvm alias create 1.9.2 ruby-1.9.2-p320
  # and make it default
  rvm alias create default ruby-1.9.2-p320

  # reload RVM
  rvm reload 
fi

done

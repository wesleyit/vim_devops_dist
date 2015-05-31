#!/bin/bash
#####################################################################
# Program: installer.sh
# Description: Install a new structure for vim config files.
# Includes syntax highlight, autocomplete and much more.
# Author: Wesley Rodrigues da Silva <wesley.it@gmail.com>
#####################################################################

## Define the timestamp
TIMESTAMP="$(date +'%Y%m%d_%H-%M-%S')"

## Clone the main repo
git clone https://github.com/wesleyit/devops-vimfiles ~/.devops-vimfiles

## Lets create symbolic links for vim. Backups will be generated for existing files.
for target in .vim .vimrc
do
	[ -e ~/$target ] && mv ~/$target ~/$target-bkp-$TIMESTAMP
	ln -s ~/.devops-vimfiles/$target ~/$target
done

## Now it is time to install the custom fonts
ln -s ~/.devops-vimfiles/vimfonts ~/.fonts/ 
fc-cache -v | grep vimfonts

## Creating shortcut
ln -s ~/.devops-vimfiles/.vim/vim.desktop ~/.local/share/applications/

echo 'Vimfiles installed. Enjoy!'

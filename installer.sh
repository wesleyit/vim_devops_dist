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
[ -e ~/.devops-vimfiles ] && mv ~/.devops-vimfiles ~/.devops-vimfiles-bkp-$TIMESTAMP
git clone https://github.com/wesleyit/devops-vimfiles ~/.devops-vimfiles

## Lets create symbolic links for vim. Backups will be generated for existing files.
for target in .vim .vimrc
do
    [ -e ~/$target ] && mv ~/$target ~/$target-bkp-$TIMESTAMP
    ln -s ~/.devops-vimfiles/$target ~/$target
done

## Now it is time to install the custom fonts
[ -e ~/.fonts ] || mkdir ~/.fonts
ln -s ~/.devops-vimfiles/vimfonts ~/.fonts/
fc-cache -v | grep vimfonts

## Creating shortcut
[ -e ~/.local/share/applications/vim.desktop ] && rm -rf ~/.local/share/applications/vim.desktop
ln -s ~/.devops-vimfiles/.vim/vim.desktop ~/.local/share/applications/

## creating alias in bashrc
alias | grep -q vim ||
cat >> ~/.bashrc << EOF

## vim must ignore global vimrc
alias vim='vim -u ~/.vimrc'

EOF

echo 'Vimfiles installed. Enjoy!'

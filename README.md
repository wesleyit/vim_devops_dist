devops-vimfiles
===============
Turn your vim editor into a coding machine on steroids!
Vim is powerful. It has a lot of plugins and customization possibilities. What if you could use a pre-configured vim with all resources you need? What if your config files were organized in a way you can understand and change only what you want?

Debian and based distros
------------------------
Maybe you have a wrong Vim version. Be sure to have Vim 7.4 or later.
It is very common to see the package vim.tiny installed on Debian systems.
This version does not have all necessary items to run the plugins.

```
apt-get update
apt-get install git curl vim-nox ruby ruby-dev python python-dev
```

Then, run the following command to download and install this Vim setup:

`curl https://raw.githubusercontent.com/wesleyit/vim_devops_dist/master/installer.sh | bash`


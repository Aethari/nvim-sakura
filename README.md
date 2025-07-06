# nvim-sakura: A Sakura theme for Neovim
A minimalist theme based off of iterm's "Sakura" theme. Also
based off of Neovim's "Quiet" theme. Only works with
`set notermguicolors` on.  

This theme has no syntax highlighting
and only some basic bolding here and there, as this is my
personal preference. It wouldn't be hard to make syntax
highlighting, however. Just take a look at
[lua/nvim-sakura.lua](lua/nvim-sakura.lua), where all of the
highlight categories are defined.

## Installation
Simply include "aethari/nvim-sakura" to your plugin list.  
For example, if you are using
[vim-plug](https://github.com/junegunn/vim-plug) (vim script):
```nvim
call plug#begin()
    " your other plugins here
    Plug 'aethari/nvim-sakura'
call plug#end()
```
and then:
```
color nvim-sakura
```
to enable the theme.  
This theme is Neovim only, and will **not** work on Vim.

If you don't want to use a plugin manager and are on Linux,
you can run the [install.sh](install.sh) script provided,
and the theme will automatically be installed for you.

## Screenshots
These screenshots are outdated, but I'm too lazy to make new
ones, and they still capture the theme's general look very
well, so they're staying.
![](images/1.png)
![](images/2.png)

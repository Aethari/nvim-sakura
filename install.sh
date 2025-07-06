#!/bin/sh

# Nvim-sakura installation script (Linux only)
# 2025 Aethari

# This may become irrelevant later if vim-plug support addition
# is easy to implement

# Setup
mkdir -p ~/.config/nvim/colors/
mkdir -p ~/.config/nvim/lua/
rm -fr ~/.config/nvim/lua/nvim-sakura.lua
rm -fr ~/.config/nvim/color/nvim-sakura.vim

# Copy Lua files
cp lua/nvim-sakura.lua ~/.config/nvim/lua/nvim-sakura.lua

# Copy vimscript loader
cp colors/nvim-sakura.vim ~/.config/nvim/colors/nvim-sakura.vim

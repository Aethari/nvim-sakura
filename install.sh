#!/bin/sh

# Nvim-sakura installation script (Linux only)
# 2025 Aethari

# Setup
mkdir -p ~/.config/nvim/colors/
mkdir -p ~/.config/nvim/lua/
chmod +x uninstall.sh
./uninstall.sh

# Copy Lua files
cp lua/nvim-sakura.lua ~/.config/nvim/lua/nvim-sakura.lua

# Copy vimscript loader
cp colors/nvim-sakura.vim ~/.config/nvim/colors/nvim-sakura.vim

if has('nvim')
	lua require('nvim-sakura').setup()
else
	echoerr "This theme only supports Neovim."
endif

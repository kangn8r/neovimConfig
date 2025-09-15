vim.cmd("set number")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.g.mapleader = "<Space>"

require("config.lazy")
require("mappings")

require("toggleterm").setup{}


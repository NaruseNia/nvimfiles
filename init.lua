local TAB_WIDTH = 2

require("plugins.init")
require("key_maps.init")

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH

vim.opt.termguicolors = true
vim.opt.pumblend = 10
vim.opt.cmdheight = 0
vim.opt.cursorline = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.rasmus_italic_comments = false
vim.cmd "colorscheme rasmus"

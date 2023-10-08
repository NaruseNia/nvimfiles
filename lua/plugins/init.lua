local config_util = require("libs._set_config")
local load_conf = config_util.load_conf
local load_confs = config_util.load_confs

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Color scheme
  "kvrohit/rasmus.nvim",

  -- Fuzzy Finder
  "junegunn/fzf",
  "junegunn/fzf.vim",

  -- LSP
  "neovim/nvim-lspconfig",
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    build = ":MasonUpdate"
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  "jose-elias-alvarez/null-ls.nvim",
  "ojroques/nvim-lspfuzzy",
  "onsails/lspkind.nvim",

  -- Completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/vim-vsnip",

  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-calc",
  "hrsh7th/cmp-emoji",

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-context",
    build = ":TSUpdate"
  },

  -- UI
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    "echasnovski/mini.base16",
    "antosha417/nvim-lsp-file-operations"
  },
  "nvim-lualine/lualine.nvim",

  -- Utils
  {
    'numToStr/Comment.nvim',
    lazy = false,
  }
})

load_confs({
  -- LSP
  "lspkind",
  "mason-lspconfig",

  -- Completion
  "cmp",

  -- UI
  "noice",
  "lualine",
  "nvim-tree"
})

require("mason").setup()

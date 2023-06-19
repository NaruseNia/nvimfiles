local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
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

  -- UI
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }
})

require("mason").setup()

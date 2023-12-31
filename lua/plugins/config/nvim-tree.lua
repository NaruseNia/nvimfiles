vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

require("nvim-tree").setup()

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

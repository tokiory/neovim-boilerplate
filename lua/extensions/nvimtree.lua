--[[
  File: nvimtree.lua
  Description: Neovim Tree plugin configuration (with lspconfig)
  See: https://github.com/nvim-tree/nvim-tree.lua
]]

local nvimtree = require("nvim-tree")

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys

local wk = require("which-key")

-- Global {{{
wk.register({
  ["K"] = {"<cmd>lua vim.lsp.buf.hover()<cr>", "Hover information"},
  ["<leader>o"] = {"<cmd>Telescope find_files<cr>", "Find files"},
  ["<leader>p"] = {"<cmd>Telescope oldfiles<cr>", "Previous files"},
  ["<leader>f"] = {"<cmd>Telescope find_files<cr>", "Find in files"},
  ["gD"] = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to declaration" },
  ["<leader>v"] = { "<cmd>Neotree float toggle<cr>", "Show file explorer" }
})
-- }}}

-- LSP {{{
wk.register({
  l = {
    name = "LSP",
      ["<leader>lr"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename symbol" },
      ["<leader>la"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code action" },
  }
})
 -- }}}

-- Telescope {{{
wk.register({
  t = {
    name = "Telescope",
    t = {"<cmd>Telescope<cr>", "Open Telescope"},
    p = {"<cmd>Telescope oldfiles<cr>", "Oldfiles"},
    s = {"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace symbols"},
    j = {"<cmd>Telescope jumplist<cr>", "Jumplist"},
    b = {"<cmd>Telescope buffers<cr>", "Buffers"},
    q = {"<cmd>Telescope quickfix<cr>", "Quickfix list"},
    r = {"<cmd>Telescope resume<cr>", "Previous Telescope window"},
    o = {"<cmd>Telescope find_files<CR>", "Find files"},
    g = {
      name = "Git",
      b = {"<cmd>Telescope git_branches<cr>", "Git branches"},
      o = { "<cmd>Telescope git_files<cr>", "Git files"},
    }
  }
}, { prefix = "<leader>"})
-- }}}

-- Trouble {{{
nm('<leader>x', '<cmd>TroubleToggle<CR>')                                        -- Show all problems in project (with help of LSP)
nm('gr', '<cmd>Trouble lsp_references<CR>')                                      -- Show use of object in project
-- }}}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0

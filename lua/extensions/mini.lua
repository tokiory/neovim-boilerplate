--[[
  File: mini.lua
  Description: mini.nvim plugins configuration
  See: https://github.com/echasnovski/mini.nvim?tab=readme-ov-file
]]

local wk = require("which-key")

-- Statusline
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md
require('mini.statusline').setup()

-- Files {{{
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md
require('mini.files').setup()
wk.register({
  ["<leader>v"] = { "<cmd>lua MiniFiles.open()<cr>", "Show file explorer" }
})
-- }}}


-- Comments
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md
require('mini.comment').setup()


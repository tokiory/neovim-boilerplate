--[[
  File: mini.lua
  Description: mini.nvim plugins configuration
  See: https://github.com/echasnovski/mini.nvim?tab=readme-ov-file
]]

return {
  'echasnovski/mini.nvim',
  version = false,
  keys = {
    { "<leader>v", "<cmd>lua MiniFiles.open()<cr>", desc = "Show file explorer" },
  },
  config = function ()

    -- Statusline
    -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md
    require('mini.statusline').setup()

    -- Files
    -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md
    require('mini.files').setup()

    -- Comments
    -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md
    require('mini.comment').setup()

    -- Autopairs
    -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md
    require('mini.pairs').setup()
  end
  }

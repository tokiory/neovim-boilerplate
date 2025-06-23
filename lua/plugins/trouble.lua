--[[
  File: trouble.lua
  Description: Configuration of trouble.nvim
  See: https://github.com/folke/trouble.nvim
]]

return {
  "folke/trouble.nvim",
  keys = {
    { "<leader>x", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle trouble" },
  },
  dependencies = "kyazdani42/nvim-web-devicons",
  config = true,
}


--[[
  File: gitsigns.lua
  Description: Configuration of gitsigns
  See: https://github.com/lewis6991/gitsigns.nvim
]]


return {
  'lewis6991/gitsigns.nvim',
  lazy = false,
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'right_align',
      delay = 1000,
      ignore_whitespace = false,
    },
  },
}

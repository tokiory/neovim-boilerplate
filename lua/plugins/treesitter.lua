--[[
  File: treesitter.lua
  Description: Configuration of tree-sitter
  See: https://github.com/tree-sitter/tree-sitter
]]

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require'nvim-treesitter.configs'.setup {

      -- Needed parsers
      ensure_installed = {
        "lua",
        "typescript",
        "javascript",
        "go",
        "python",
      },

      -- Install all parsers synchronously
      sync_install = false,

      -- Подсветка
      highlight = {
        -- Enabling highlight for all files
        enable = true,
        disable = {},
      },

      indent = {
        -- Disabling indentation for all files
        enable = false,
        disable = {},
      }
    }
  end
}

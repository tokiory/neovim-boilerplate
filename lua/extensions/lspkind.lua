--[[
  File: lspkind.lua
  Description: LSP Kind plugin configuration
  See: https://github.com/onsails/lspkind.nvim
]]

local lspkind = require('lspkind')

lspkind.init({
  mode = 'symbol',
  preset = 'codicons',
  symbol_map = {
    Text = "",
    Method = "󰊕",
    Function = "󰡱",
    Constructor = "",
    Field = "󰏝",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "󰉺"
  },
})

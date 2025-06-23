--[[
  File: mason.lua
  Description: Mason plugin configuration (with lspconfig)
  See: https://github.com/williamboman/mason.nvim
]]


return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  lazy = false,
  keys = {
    { "g.", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code action" },
    { "gR", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename symbol" },
    { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover information" },
    { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to declaration" },
  },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    mason.setup()
    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",             -- LSP for Lua language
        "ts_ls",              -- LSP for Typescript
        "emmet_ls",           -- LSP for Emmet (Vue, HTML, CSS)
        "cssls",              -- LSP for CSS
        "pyright",            -- LSP for Python
        "vue_ls",             -- LSP for Vue
        "gopls",              -- LSP for Go
      }
    });
  end
}



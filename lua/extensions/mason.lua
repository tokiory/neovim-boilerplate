--[[
  File: mason.lua
  Description: Mason plugin configuration (with lspconfig)
  See: https://github.com/williamboman/mason.nvim
]]

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",             -- LSP for Lua language
    "tsserver",           -- LSP for Typescript
    "emmet_ls",           -- LSP for Emmet (Vue, HTML, CSS)
    "cssls",              -- LSP for CSS
    "pyright",            -- LSP for Python
    "volar",              -- LSP for Vue
    "gopls",              -- LSP for Go
  }
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {}
  end,
  ["volar"] = function()
    lspconfig.volar.setup({
      filetypes = { "vue" },
      init_options = {
        vue = {
          -- Fix for Volar 2.0
          -- See: https://github.com/vuejs/language-tools/issues/4180
          -- See: https://github.com/williamboman/mason-lspconfig.nvim/issues/371
          hybridMode = false,
        },
        typescript = {
          tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib",
        },
      },
    })
  end,
}

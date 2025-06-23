--[[
  File: telescope.lua
  Description: Telescope plugin configuration
  See: https://github.com/nvim-telescope/telescope.nvim
]]

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  lazy = false,
  keys = {
    { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find in files" },
    { "<leader>o", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>p", "<cmd>Telescope oldfiles<cr>", desc = "Previous files" },
    { "gr", "<cmd>Telescope lsp_references<cr>", desc = "Go to references" },
    { "gI", "<cmd>Telescope lsp_implementations<cr>", desc = "Go to implementations" },

    { "<leader>t", group = "Telescope" },
    { "<leader>tb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>tg", group = "Git" },
    { "<leader>tgb", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
    { "<leader>tgo", "<cmd>Telescope git_files<cr>", desc = "Git files" },
    { "<leader>tj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
    { "<leader>to", "<cmd>Telescope find_files<CR>", desc = "Find files" },
    { "<leader>tp", "<cmd>Telescope oldfiles<cr>", desc = "Oldfiles" },
    { "<leader>tq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix list" },
    { "<leader>tr", "<cmd>Telescope resume<cr>", desc = "Previous Telescope window" },
    { "<leader>ts", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace symbols" },
    { "<leader>tt", "<cmd>Telescope<cr>", desc = "Open Telescope" },

  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "ahmedkhalf/project.nvim",
  },
  opts = {}
}


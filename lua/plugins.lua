--[[
  File: plugins.lua
  Description: This file needed for bootstraping packer.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/wbthomason/packer.nvim
]]

require "helpers/globals"
cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Mason {{{
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate",
    requires = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require "extensions.mason"
    end
  }
  -- }}}

  -- TreeSitter {{{
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require "extensions.treesitter"
    end
  }
  -- }}}

  -- Telescope {{{
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      {'nvim-lua/plenary.nvim'}
    },
    config = function()
      require "extensions.telescope"
    end
  }
  -- }}}

  -- Nvim Tree {{{
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require "extensions.nvimtree"
    end
  }
  -- }}}

  -- CMP {{{
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require "extensions.cmp"
    end
  }
  -- }}}

  -- LSP Kind {{{
  use {
    'onsails/lspkind-nvim',
    config = function()
      require "extensions.lspkind"
    end
  }
  -- }}}

    -- Git Signs{{{
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require "extensions.gitsigns"
    end
  }
  -- }}}

  -- Trouble {{{
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require "extensions.trouble"
    end,
  }
  -- }}}
end)

-- vim: tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=1

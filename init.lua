--[[
  File: init.lua
  Description: Entry point file for neovim
]]

vim.g.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys

-- Bootsraping plugin manager
require "lazy-bootstrap"

-- Settings
require "settings"

-- Plugin management {{{
local lazy = require("lazy")
lazy.setup("plugins")
-- }}}

require "keybindings"

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0

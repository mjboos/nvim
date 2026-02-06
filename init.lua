-- Set leader key before lazy.nvim
vim.g.mapleader = "-"
vim.g.maplocalleader = "-"

-- Disable netrw (using nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load options
require("options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins (auto-imports lua/plugins/*.lua)
require("lazy").setup("plugins")

-- Load keymaps
require("keymaps")

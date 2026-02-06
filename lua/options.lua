local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.ruler = true
opt.showcmd = true
opt.mouse = "a"
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Search
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Editing
opt.backspace = "indent,eol,start"
opt.history = 50
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- Folding
opt.foldmethod = "indent"
opt.foldlevel = 99

local map = vim.keymap.set

-- Fold toggle with space
map("n", "<space>", "za", { desc = "Toggle fold" })

-- File tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- Search and replace word under cursor
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/", { desc = "Replace word under cursor" })

-- Diffview
map("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" })
map("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })
map("n", "<leader>dh", "<cmd>DiffviewFileHistory %<CR>", { desc = "File history (current file)" })
map("n", "<leader>dH", "<cmd>DiffviewFileHistory<CR>", { desc = "Branch history" })

-- Toggle 80-char overlength highlight
map("n", "<leader>1", function()
    if vim.w.overlength_match then
        pcall(vim.fn.matchdelete, vim.w.overlength_match)
        vim.w.overlength_match = nil
    else
        vim.w.overlength_match = vim.fn.matchadd("ColorColumn", "\\%>81v.\\+")
    end
end, { desc = "Toggle 80-char column highlight" })

-- Highlight trailing whitespace
vim.api.nvim_create_autocmd("Syntax", {
    pattern = "*",
    callback = function()
        vim.cmd([[syn match ExtraWhitespace /\s\+$\| \+\ze\t/]])
        vim.api.nvim_set_hl(0, "ExtraWhitespace", { bg = "#5f875f" })
    end,
})

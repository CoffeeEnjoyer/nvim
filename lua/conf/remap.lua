vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("", "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("", "<A-l>", "<C-\\><C-n><C-w>l")

vim.keymap.set("n", "<leader>t", vim.cmd.terminal)

vim.keymap.set("n", "<A-S-k>", vim.cmd.split)
vim.keymap.set("n", "<A-S-j>", function()
    vim.cmd("split")
    vim.api.nvim_input("<C-w>j")
end, {noremap = true})
vim.keymap.set("n", "<A-S-l>", function()
    vim.cmd("vsplit")
    vim.api.nvim_input("<C-w>l")
end, {noremap = true})
vim.keymap.set("n", "<A-S-h>", vim.cmd.vsp)

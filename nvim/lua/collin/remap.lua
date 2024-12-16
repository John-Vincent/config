vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Vex)
vim.keymap.set("n", "<leader>ps", vim.cmd.Sex)
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "J", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "K", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so /Users/cvincent/.config/nvim/init.lua")
  print('sourced init.lua')
end)



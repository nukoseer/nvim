vim.keymap.set("n", "<C-x>j", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>") 

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

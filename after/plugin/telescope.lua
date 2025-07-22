local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = 'Telescope search' })

if vim.fn.executable("rg") == 1 then
  require("telescope").setup({
    defaults = {
      vimgrep_arguments = {
        "rg", "--color=never", "--no-heading", "--with-filename",
        "--line-number", "--column", "--smart-case"
      }
    }
  })
end

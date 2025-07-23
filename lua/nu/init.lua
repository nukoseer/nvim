require("nu.lazy")
require("nu.set")
require("nu.remap")

require("lazy").setup({
    spec = {
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.8',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        { "miikanissi/modus-themes.nvim", priority = 1000 },
        { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
        {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
            dependencies = { "nvim-lua/plenary.nvim" }
        },
        {
            "mbbill/undotree",
            branch = "master",
        },
        {
            "folke/which-key.nvim",
            event = "VeryLazy",
            opts = {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            },
            keys = {
                {
                    "<leader>?",
                    function()
                        require("which-key").show({ global = false })
                    end,
                    desc = "Buffer Local Keymaps (which-key)",
                },
            },
        },
        {
            "wnkz/monoglow.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
        },
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        }
    },
    checker = { enabled = true },
})

vim.g.netrw_banner = false

vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})


vim.lsp.config('clangd', {
  cmd = {'clangd-16'},
  filetypes = {'c', 'cpp'},
})

-- vim.diagnostic.enable(false)

vim.lsp.enable('luals')
vim.lsp.enable('clangd')


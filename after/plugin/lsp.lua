vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})


vim.lsp.config('clangd', {
  cmd = {'clangd-16'},
  filetypes = {'c', 'cpp'},
  root_markers = { '.git', '.projectile' },
})


vim.lsp.enable('luals')
vim.lsp.enable('clangd')

vim.diagnostic.config({ underline = false, signs = false, virtual_text = false })

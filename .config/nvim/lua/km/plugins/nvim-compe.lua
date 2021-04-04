return function()
  require'compe'.setup {
    enabled = true,
    debug = false,
    preselect = 'enable',

    source = {
      buffer = { filetypes = {'vimwiki'}},
      spell = { filetypes = {'vimwiki'}},
      path = true,
      vsnip = true,
      nvim_lsp = true,
      nvim_lua = true,
    },
  }

  vim.g.vsnip_snippet_dir = '/home/kilometers/.config/nvim/snippets'
end

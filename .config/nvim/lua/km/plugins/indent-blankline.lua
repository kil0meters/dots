return function()
  vim.g.indent_blankline_filetype_exclude = {
    'markdown',
    'pandoc',
    'vimwiki',
    'NeogitStatus',
    'packer',
    'tex',
    'tsplayground'
  }
  vim.g.indent_blankline_buftype_exclude = {
    'terminal',
    'nofile',
    'help'
  }
  -- vim.g.indentLine_char = '▏' -- '│'
  -- vim.g.indentLine_char = '▏' -- '│'
  vim.g.indent_blankline_char = '▏' -- '│'
  vim.g.indent_blankline_show_first_indent_level = false
  vim.g.indent_blankline_show_trailing_blankline_indent = false
  vim.g.indent_blankline_use_treesitter = true
end

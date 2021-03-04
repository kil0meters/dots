return function()
  vim.g.indentLine_fileTypeExclude = {
    'markdown',
    'pandoc',
    'vimwiki',
    'NeogitStatus',
    'help',
    'man',
    'tex'
  }
  vim.g.indentLine_char = '▏' -- '│'
  vim.g.indent_blankline_extra_indent_level = -1
end

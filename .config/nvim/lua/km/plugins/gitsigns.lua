return function()
  require('gitsigns').setup{
    signs = {
      add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAdd'   , linehl='GitSignsAdd'},
      change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChange', linehl='GitSignsChange'},
      delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDelete', linehl='GitSignsDelete'},
      topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDelete', linehl='GitSignsDelete'},
      changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChange', linehl='GitSignsChange'},
    },
    numhl = true,
    linehl = false,
  }
end

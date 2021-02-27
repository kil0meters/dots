return function()
  vim.cmd [[autocmd User TelescopePreviewerLoaded setlocal number]]

  require('telescope').setup {
    defaults = {
    layout_strategy = 'flex',
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_preview = require'telescope.previewers'.vim_buffer_qflist.new,
    theme = require'telescope.themes'.get_dropdown({})
    }
  }
end

return function()
  vim.cmd [[autocmd User TelescopePreviewerLoaded setlocal number]]

  require('telescope').setup {
    defaults = {
      layout_strategy = 'flex',
      file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
      grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
      qflist_preview = require'telescope.previewers'.vim_buffer_qflist.new,
      theme = require'telescope.themes'.get_dropdown({}),
      extensions = {
        fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
        }
      }
    }
  }

  require('telescope').load_extension('fzy_native')
end

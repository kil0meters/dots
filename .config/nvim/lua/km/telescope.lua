local M = {}

M.lsp_references = function()
  require('telescope.builtin').lsp_references(require('telescope.themes').get_dropdown{
    initial_mode = "normal",
  })
end

return M

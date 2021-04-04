local M = {}

M.lsp_references = function()
  require('telescope.builtin').lsp_references(require('telescope.themes').get_dropdown{
    initial_mode = "normal",
  })
end

M.directory = function(opts)
  local globbed_files = vim.fn.globpath(opts.directory, '*', true, true)
  local project_list = {}
  for _, v in ipairs(globbed_files) do
    table.insert(project_list, vim.fn.fnamemodify(v, ':t'))
  end

  require('telescope.pickers').new(opts, {
    finder = require('telescope.finders').new_table {
      results = project_list,
      entry_maker = function(line)
        return {
          ordinal = line,
          display = line,
        }
      end
    },
    sorter = require('telescope.config').values.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr)
      require('telescope.actions').select_default:replace(function()
        local selection = require('telescope.actions.state').get_selected_entry()
        require('telescope.actions').close(prompt_bufnr)

        vim.cmd("cd " .. opts.directory .. selection.display)
        -- vim.cmd [[
        --   if !exists("t:netrw_lexbufnr")
        --     Lex
        --   endif
        -- ]]
      end)
      return true
    end
  }):find()
end

return M

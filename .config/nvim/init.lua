-- helpers
-- cmd = vim.cmd
-- fn = vim.fn
-- g = vim.g

require 'settings'
require 'mappings'
require 'plugins'

-----LSP-----

 -- populate quickfix list with diagnostics automatically
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  function(err, method, result, client_id)
    require('lsp_extensions.workspace.diagnostic').handler(err, method, result, client_id)
    require('lsp_extensions.workspace.diagnostic').set_qf_list{
      open_qflist = false,
      client_id = client_id,
    }
  end, {
    signs = {
      severity_limit = "Warning",
    }
  }
)


-----COMMANDS------

vim.cmd [[

filetype plugin indent on

command! -bang -nargs=* WikiRg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, fzf#vim#with_preview({'dir': '/home/kilometers/vimwiki'}), <bang>0)

autocmd BufWritePre * :%s/\s\+$//e

]]

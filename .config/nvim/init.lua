require 'settings'
require 'mappings'
require 'plugins'

-----LSP-----

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  -- populate quickfix list with diagnostics automatically
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
autocmd BufWritePre * :%s/\s\+$//e

]]

-- You paraphrase Weist (2016) as saying serial killers are treatest as
-- celebrities just as much as they are treated as monsters. However, some of
-- the examples supplied don't really seem to support the idea that they are
-- viewed as celebrities. One might think that a monster would be prodded by
-- academic researchers, journalists, and law enforcement. From an *incredibly*
-- cursory glance at Weist (2016) (ctrl-f), it does not seem like it makes
-- direct reference to any of these parties.

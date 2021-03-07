return function()
  local lsp = require 'lspconfig'
  local default_on_attach = function(client)
    vim.cmd "augroup lsp_commands"
    vim.cmd "au!"
    if client.resolved_capabilities.document_highlight then
      vim.cmd "au CursorHoldI <buffer> lua vim.lsp.buf.signature_help()"
    end

    if client.resolved_capabilities.signature_help then
      vim.cmd "au CursorMoved,InsertEnter <buffer> lua vim.lsp.buf.clear_references()"
      vim.cmd "au CursorHold  <buffer> lua vim.lsp.buf.document_highlight()"
    end

    if client.resolved_capabilities.document_formatting then
      vim.cmd "au BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
    end

    vim.cmd "augroup END"
  end
  local default_capabilities = vim.lsp.protocol.make_client_capabilities()
  default_capabilities.textDocument.completion.completionItem.snippetSupport = true

  local lua_setup = function()
    local system_name
    if vim.fn.has("mac") == 1 then
      system_name = "macOS"
      elseif vim.fn.has("unix") == 1 then
      system_name = "Linux"
      elseif vim.fn.has('win32') == 1 then
      system_name = "Windows"
      else
      print("Unsupported system for sumneko")
    end

    -- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
    local sumneko_root_path = '/home/kilometers/Projects/lua-language-server'
    local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"


    lsp.sumneko_lua.setup {
      cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
      on_attach = default_on_attach,
      capabilities = default_capabilities,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = vim.split(package.path, ';'),
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = {
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            },
          },
        },
      },
    }
  end

  local tex_setup = function()
    lsp.texlab.setup {
      on_attach=default_on_attach,
      capabilities=default_capabilities,
      settings = {
        bibtex = {
          formatting = {
            lineLength = 80,
          }
        },
        latex = {
          build = {
            executable = "latexmk",
            args = {
              "-pdf",
              "-interaction=nonstopmode",
              "-pvc",
              "%f"
            },
            outputDirectory = "build",
            onSave = true,
          },
          forwardSearch = {
            executable = "zathura",
            args = {"--synctex-forward", "%l:1:%f", "%p"},
            onSave = true,
          },
          lint = {
            onChange = true
          }
        }
      }
    }
  end

  -- CONFIG

  require 'lspkind'.init()

  vim.fn.sign_define("LspDiagnosticsSignError",       {text = "", texthl = "LspDiagnosticsSignError"})
  vim.fn.sign_define("LspDiagnosticsSignWarning",     {text = "", texthl = "LspDiagnosticsSignWarning"})
  vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", texthl = "LspDiagnosticsSignInformation"})
  vim.fn.sign_define("LspDiagnosticsSignHint",        {text = "", texthl = "LspDiagnosticsSignHint"})

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

  -- Individual servers
  lua_setup()
  tex_setup()

  local servers = {'html', 'cssls', 'yamlls', 'jsonls', 'rust_analyzer', 'clangd', 'pyright', 'gopls', 'hls' }
  for _, server in ipairs(servers) do
    lsp[server].setup { on_attach=default_on_attach, capabilities=default_capabilities }
  end
end

return function()
  local lsp = require 'lspconfig'
  local default_on_attach = function(client)
    vim.cmd "augroup lsp_commands" vim.cmd "au!" if client.resolved_capabilities.signature_help then
      vim.cmd "au CursorHoldI <buffer> silent lua vim.lsp.buf.signature_help()"
    end

    if client.resolved_capabilities.document_highlight then
      vim.cmd "au CursorMoved,InsertEnter <buffer> silent lua vim.lsp.buf.clear_references()"
      vim.cmd "au CursorMoved <buffer> silent lua vim.lsp.buf.document_highlight()"
    end

    if client.resolved_capabilities.document_formatting then
      vim.cmd "au BufWritePre <buffer> silent lua vim.lsp.buf.formatting_sync()"
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

  -- CONFIG

  require 'lspkind'.init()

  vim.fn.sign_define("LspDiagnosticsSignError",       {text = "", texthl = "LspDiagnosticsSignError"})
  vim.fn.sign_define("LspDiagnosticsSignWarning",     {text = "", texthl = "LspDiagnosticsSignWarning"})
  vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", texthl = "LspDiagnosticsSignInformation"})
  vim.fn.sign_define("LspDiagnosticsSignHint",        {text = "", texthl = "LspDiagnosticsSignHint"})

  -- Individual servers
  lua_setup()

  local servers = {
    'clangd',
    'cssls',
    'gopls',
    'hls',
    'tsserver',
    texlab = {
      on_attach=default_on_attach,
      capabilities=default_capabilities,
      settings = {
        texlab = {
          auxDirectory = "build",
          build = {
            executable = "tectonic",
            args = {
              "--outdir=build",
              "--synctex",
              "--print",
              "--keep-logs",
              "--keep-intermediates",
              "%f",
            },
            forwardSearchAfter = true,
            onSave = true,
          },
          forwardSearch = {
            executable = "okular",
            args = {"--unique", "%p#src:%l%f"},
            onSave = true,
          },
          -- forwardSearch = {
          --   executable = "zathura",
          --   args = {"--synctex-forward", "%l:1:%f", "%p"},
          --   onSave = true,
          -- },
        }
      }
    },
    'html',
    'jsonls',
    'pyright',
    'rust_analyzer',
    'yamlls',
  }
  for key, value in pairs(servers) do
    if type(key) == "number" then
      lsp[value].setup { on_attach=default_on_attach, capabilities=default_capabilities }
    else
      lsp[key].setup(value)
    end
  end
end

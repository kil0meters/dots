-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kilometers/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/kilometers/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/kilometers/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/kilometers/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kilometers/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2š\4\0\0\4\0\16\0\0194\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\14\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\2:\2\15\1>\0\2\1G\0\1\0\nsigns\1\0\2\vlinehl\1\nnumhl\2\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\19GitSignsChange\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ–”\nnumhl\21GitSignsDeleteNr\vlinehl\19GitSignsDelete\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\bâ–\nnumhl\21GitSignsDeleteNr\vlinehl\19GitSignsDelete\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”ƒ\nnumhl\21GitSignsChangeNr\vlinehl\19GitSignsChange\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”ƒ\nnumhl\18GitSignsAddNr\vlinehl\16GitSignsAdd\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["haskell-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2¡\3\0\0\2\0\v\0\0254\0\0\0007\0\1\0003\1\3\0:\1\2\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0004\0\0\0007\0\1\0%\1\a\0:\1\6\0004\0\0\0007\0\1\0)\1\1\0:\1\b\0004\0\0\0007\0\1\0)\1\1\0:\1\t\0004\0\0\0007\0\1\0)\1\2\0:\1\n\0G\0\1\0$indent_blankline_use_treesitter4indent_blankline_show_trailing_blankline_indent-indent_blankline_show_first_indent_level\bâ–\26indent_blankline_char\1\4\0\0\rterminal\vnofile\thelp%indent_blankline_buftype_exclude\1\b\0\0\rmarkdown\vpandoc\fvimwiki\17NeogitStatus\vpacker\btex\17tsplayground&indent_blankline_filetype_exclude\6g\bvim\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\1\2Å\1\0\0\4\0\a\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0003\2\4\0003\3\5\0:\3\6\2>\0\3\1G\0\1\0\31multi_line_comment_strings\1\3\0\0\t--[[\a]]\1\0\2 prefer_single_line_comments\2\31single_line_comment_string\a--\blua\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2·\3\0\0\4\0\24\0%4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\16\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\0023\3\14\0:\3\15\2:\2\17\0013\2\18\0002\3\0\0:\3\a\0022\3\0\0:\3\5\0023\3\19\0:\3\t\0023\3\20\0:\3\v\0022\3\0\0:\3\r\0022\3\0\0:\3\15\2:\2\21\0013\2\22\0:\2\23\1>\0\2\1G\0\1\0\foptions\1\0\3\25component_separators\5\23section_separators\5\ntheme\rcodedark\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2w\0\0\3\0\5\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0>\0\3\1G\0\1\0\1\0\5\vrgb_fn\2\rRRGGBBAA\2\vhsl_fn\2\bRGB\2\vRRGGBB\2\1\3\0\0\6*\f!packer\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\1\2²\2\0\0\5\0\17\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\a\0003\3\5\0003\4\4\0:\4\6\3:\3\b\0023\3\n\0003\4\t\0:\4\6\3:\3\v\2:\2\f\1>\0\2\0014\0\r\0007\0\14\0%\1\16\0:\1\15\0G\0\1\0+/home/kilometers/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\vsource\nspell\1\0\0\1\2\0\0\fvimwiki\vbuffer\1\0\4\rnvim_lsp\2\rnvim_lua\2\nvsnip\2\tpath\2\14filetypes\1\0\0\1\2\0\0\fvimwiki\1\0\3\14preselect\venable\fenabled\2\ndebug\1\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\1\2Õ\1\0\0\3\0\a\0\v4\0\0\0007\0\1\0007\0\2\0%\1\3\0003\2\4\0>\0\3\0014\0\0\0007\0\5\0%\1\6\0>\0\2\1G\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\1\0\2\ttext\bï ´\vtexthl\30LspDiagnosticsSignWarning\18LightBulbSign\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2·\4\0\1\3\0\r\0)4\1\0\0007\1\1\1%\2\2\0>\1\2\0014\1\0\0007\1\1\1%\2\3\0>\1\2\0017\1\4\0007\1\5\1\15\0\1\0T\2\4€4\1\0\0007\1\1\1%\2\6\0>\1\2\0017\1\4\0007\1\a\1\15\0\1\0T\2\b€4\1\0\0007\1\1\1%\2\b\0>\1\2\0014\1\0\0007\1\1\1%\2\t\0>\1\2\0017\1\4\0007\1\n\1\15\0\1\0T\2\4€4\1\0\0007\1\1\1%\2\v\0>\1\2\0014\1\0\0007\1\1\1%\2\f\0>\1\2\1G\0\1\0\16augroup ENDEau BufWritePre <buffer> silent lua vim.lsp.buf.formatting_sync()\24document_formattingHau CursorMoved <buffer> silent lua vim.lsp.buf.document_highlight()Rau CursorMoved,InsertEnter <buffer> silent lua vim.lsp.buf.clear_references()\23document_highlightDau CursorHoldI <buffer> silent lua vim.lsp.buf.signature_help()\19signature_help\26resolved_capabilities\bau!\25augroup lsp_commands\bcmd\bvimõ\5\0\0\v\3*\1Y)\0\0\0004\1\0\0007\1\1\0017\1\2\1%\2\3\0>\1\2\2\t\1\0\0T\1\2€%\0\4\0T\1\21€4\1\0\0007\1\1\0017\1\2\1%\2\5\0>\1\2\2\t\1\0\0T\1\2€%\0\6\0T\1\f€4\1\0\0007\1\1\0017\1\2\1%\2\a\0>\1\2\2\t\1\0\0T\1\2€%\0\b\0T\1\3€4\1\t\0%\2\n\0>\1\2\1%\1\v\0\16\2\1\0%\3\f\0\16\4\0\0%\5\r\0$\2\5\2+\3\0\0007\3\14\0037\3\15\0033\4\18\0003\5\16\0;\2\1\5\16\6\1\0%\a\17\0$\6\a\6;\6\3\5:\5\19\4+\5\1\0:\5\20\4+\5\2\0:\5\21\0043\5'\0003\6\27\0003\a\22\0004\b\0\0007\b\23\b4\t\24\0007\t\25\t%\n\26\0>\b\3\2:\b\25\a:\a\28\0063\a\30\0003\b\29\0:\b\31\a:\a \0063\a$\0002\b\0\b4\t\0\0007\t\1\t7\t!\t%\n\"\0>\t\2\2)\n\2\0009\n\t\b4\t\0\0007\t\1\t7\t!\t%\n#\0>\t\2\2)\n\2\0009\n\t\b:\b%\a:\a&\6:\6(\5:\5)\4>\3\2\1G\0\1\0\0À\1À\2À\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\bcmd\1\0\0\14/main.lua\1\3\0\0\0\a-E\nsetup\16sumneko_lua\25/lua-language-server\n/bin/2/home/kilometers/Projects/lua-language-server#Unsupported system for sumneko\nprint\fWindows\nwin32\nLinux\tunix\nmacOS\bmac\bhas\afn\bvim\2\5\0\0\a\3\24\1.)\0\0\0004\1\0\0007\1\1\0017\1\2\1%\2\3\0>\1\2\2\t\1\0\0T\1\5€3\1\4\0003\2\5\0:\2\6\1\16\0\1\0T\1\v€4\1\0\0007\1\1\0017\1\2\1%\2\a\0>\1\2\2\t\1\0\0T\1\4€3\1\b\0003\2\t\0:\2\6\1\16\0\1\0+\1\0\0007\1\n\0017\1\v\0013\2\f\0+\3\1\0:\3\r\2+\3\2\0:\3\14\0023\3\22\0003\4\15\0003\5\16\0003\6\17\0:\6\6\5:\5\18\0043\5\19\0003\6\20\0:\6\6\5:\5\21\4:\4\n\3:\3\23\2>\1\2\1G\0\1\0\0À\1À\2À\rsettings\1\0\0\18forwardSearch\1\3\0\0\r--unique\16%p#src:%l%f\1\0\2\vonSave\2\15executable\vokular\nbuild\1\a\0\0\19--outdir=build\14--synctex\f--print\16--keep-logs\25--keep-intermediates\a%f\1\0\3\vonSave\2\15executable\rtectonic\23forwardSearchAfter\2\1\0\1\17auxDirectory\nbuild\17capabilities\14on_attach\1\0\0\nsetup\vtexlab\1\3\0\0\r--unique\16%p#src:%l%f\1\0\2\vonSave\2\15executable\vokular\tunix\targs\1\4\0\0\a%l\a%p\a%f\1\0\2\vonSave\2\15executable>/Applications/Skim.app/Contents/SharedSupport/displayline\bmac\bhas\afn\bvim\2Ù\6\1\0\r\0!\0J4\0\0\0%\1\1\0>\0\2\0021\1\2\0004\2\3\0007\2\4\0027\2\5\0027\2\6\2>\2\1\0027\3\a\0027\3\b\0037\3\t\3)\4\2\0:\4\n\0031\3\v\0001\4\f\0004\5\0\0%\6\r\0>\5\2\0027\5\14\5>\5\1\0014\5\3\0007\5\15\0057\5\16\5%\6\17\0003\a\18\0>\5\3\0014\5\3\0007\5\15\0057\5\16\5%\6\19\0003\a\20\0>\5\3\0014\5\3\0007\5\15\0057\5\16\5%\6\21\0003\a\22\0>\5\3\0014\5\3\0007\5\15\0057\5\16\5%\6\23\0003\a\24\0>\5\3\1\16\5\3\0>\5\1\1\16\5\4\0>\5\1\0013\5\25\0004\6\26\0\16\a\5\0>\6\2\4D\t\16€4\v\27\0\16\f\t\0>\v\2\2\a\v\28\0T\v\a€6\v\n\0007\v\29\v3\f\30\0:\1\31\f:\2 \f>\v\2\1T\v\4€6\v\t\0007\v\29\v\16\f\n\0>\v\2\1B\t\3\3N\tî0\0\0€G\0\1\0\17capabilities\14on_attach\1\0\0\nsetup\vnumber\ttype\npairs\1\v\0\0\vclangd\ncssls\ngopls\bhls\rtsserver\thtml\vjsonls\fpyright\18rust_analyzer\vyamlls\1\0\2\ttext\bï™\vtexthl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\1\0\2\ttext\bïš\vtexthl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\bï±\vtexthl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\bï€\vtexthl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\afn\tinit\flspkind\0\0\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\1\2õ\6\0\0\4\0\30\0I4\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\5\0>\1\2\0027\1\6\1:\1\3\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\t\1:\1\a\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\v\1:\1\n\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\r\1:\1\f\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\15\1:\1\14\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\17\1:\1\16\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\20\1:\1\18\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\22\1:\1\21\0003\0\23\0004\1\0\0007\1\24\0013\2\28\0003\3\26\0:\0\27\3:\3\29\2:\2\25\1G\0\1\0\tlist\1\0\0\17border_chars\1\0\0\30lsp_utils_codeaction_opts\6g\1\0\6\19MID_HORIZONTAL\bâ”€\17MID_VERTICAL\bâ”‚\rTOP_LEFT\bâ•­\16BOTTOM_LEFT\bâ•°\14TOP_RIGHT\bâ•®\17BOTTOM_RIGHT\bâ•¯\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2ó\5\0\0\5\0!\0(4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0003\3\5\0:\3\6\2:\2\a\0013\2\b\0:\2\t\0013\2\n\0:\2\v\0013\2\f\0:\2\r\0013\2\14\0003\3\15\0:\3\16\2:\2\17\0013\2\20\0003\3\18\0003\4\19\0:\4\16\3:\3\21\2:\2\22\1>\0\2\0014\0\0\0%\1\23\0>\0\2\0027\0\24\0>\0\1\0023\1\29\0003\2\26\0003\3\27\0:\3\28\2:\2\30\0013\2\31\0:\2 \1:\1\25\0G\0\1\0\fused_by\1\2\0\0\amd\17install_info\1\0\1\rfiletype\rmarkdown\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\1\burl5https://github.com/ikatyang/tree-sitter-markdown\rmarkdown\23get_parser_configs\28nvim-treesitter.parsers\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\2\21node_incremental\6+\21node_decremental\6-\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\2\venable\2\vindent\fdisable\1\3\0\0\thtml\vpython\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  taskwiki = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/taskwiki"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2¹\4\0\0\5\0\25\00004\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\3\0%\1\4\0>\0\2\0027\0\5\0003\1\22\0003\2\6\0004\3\3\0%\4\a\0>\3\2\0027\3\b\0037\3\t\3:\3\n\0024\3\3\0%\4\a\0>\3\2\0027\3\v\0037\3\t\3:\3\f\0024\3\3\0%\4\a\0>\3\2\0027\3\r\0037\3\t\3:\3\14\0024\3\3\0%\4\15\0>\3\2\0027\3\16\0032\4\0\0>\3\2\2:\3\17\0023\3\19\0003\4\18\0:\4\20\3:\3\21\2:\2\23\1>\0\2\0014\0\3\0%\1\4\0>\0\2\0027\0\24\0%\1\20\0>\0\2\1G\0\1\0\19load_extension\rdefaults\1\0\0\15extensions\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\ntheme\17get_dropdown\21telescope.themes\19qflist_preview\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\1\20layout_strategy\tflex\nsetup\14telescope\frequire:autocmd User TelescopePreviewerLoaded setlocal number\bcmd\bvim\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-code-dark"] = {
    config = { "\27LJ\1\0028\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\25colorscheme codedark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vim-code-dark"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  vimwiki = {
    config = { "\27LJ\1\2\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0'\1\0\0:\1\2\0004\0\0\0007\0\1\0'\1\0\0:\1\3\0004\0\0\0007\0\1\0'\1\2\0:\1\4\0G\0\1\0\26vimwiki_hl_cb_checked\23vimwiki_global_ext\27vimwiki_table_mappings\6g\bvim\0" },
    loaded = true,
    path = "/home/kilometers/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2¹\4\0\0\5\0\25\00004\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\3\0%\1\4\0>\0\2\0027\0\5\0003\1\22\0003\2\6\0004\3\3\0%\4\a\0>\3\2\0027\3\b\0037\3\t\3:\3\n\0024\3\3\0%\4\a\0>\3\2\0027\3\v\0037\3\t\3:\3\f\0024\3\3\0%\4\a\0>\3\2\0027\3\r\0037\3\t\3:\3\14\0024\3\3\0%\4\15\0>\3\2\0027\3\16\0032\4\0\0>\3\2\2:\3\17\0023\3\19\0003\4\18\0:\4\20\3:\3\21\2:\2\23\1>\0\2\0014\0\3\0%\1\4\0>\0\2\0027\0\24\0%\1\20\0>\0\2\1G\0\1\0\19load_extension\rdefaults\1\0\0\15extensions\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\ntheme\17get_dropdown\21telescope.themes\19qflist_preview\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\1\20layout_strategy\tflex\nsetup\14telescope\frequire:autocmd User TelescopePreviewerLoaded setlocal number\bcmd\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\2w\0\0\3\0\5\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0>\0\3\1G\0\1\0\1\0\5\vrgb_fn\2\rRRGGBBAA\2\vhsl_fn\2\bRGB\2\vRRGGBB\2\1\3\0\0\6*\f!packer\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\2¡\3\0\0\2\0\v\0\0254\0\0\0007\0\1\0003\1\3\0:\1\2\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0004\0\0\0007\0\1\0%\1\a\0:\1\6\0004\0\0\0007\0\1\0)\1\1\0:\1\b\0004\0\0\0007\0\1\0)\1\1\0:\1\t\0004\0\0\0007\0\1\0)\1\2\0:\1\n\0G\0\1\0$indent_blankline_use_treesitter4indent_blankline_show_trailing_blankline_indent-indent_blankline_show_first_indent_level\bâ–\26indent_blankline_char\1\4\0\0\rterminal\vnofile\thelp%indent_blankline_buftype_exclude\1\b\0\0\rmarkdown\vpandoc\fvimwiki\17NeogitStatus\vpacker\btex\17tsplayground&indent_blankline_filetype_exclude\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\1\2²\2\0\0\5\0\17\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\a\0003\3\5\0003\4\4\0:\4\6\3:\3\b\0023\3\n\0003\4\t\0:\4\6\3:\3\v\2:\2\f\1>\0\2\0014\0\r\0007\0\14\0%\1\16\0:\1\15\0G\0\1\0+/home/kilometers/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\vsource\nspell\1\0\0\1\2\0\0\fvimwiki\vbuffer\1\0\4\rnvim_lsp\2\rnvim_lua\2\nvsnip\2\tpath\2\14filetypes\1\0\0\1\2\0\0\fvimwiki\1\0\3\14preselect\venable\fenabled\2\ndebug\1\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\1\2\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0'\1\0\0:\1\2\0004\0\0\0007\0\1\0'\1\0\0:\1\3\0004\0\0\0007\0\1\0'\1\2\0:\1\4\0G\0\1\0\26vimwiki_hl_cb_checked\23vimwiki_global_ext\27vimwiki_table_mappings\6g\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2ó\5\0\0\5\0!\0(4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0003\3\5\0:\3\6\2:\2\a\0013\2\b\0:\2\t\0013\2\n\0:\2\v\0013\2\f\0:\2\r\0013\2\14\0003\3\15\0:\3\16\2:\2\17\0013\2\20\0003\3\18\0003\4\19\0:\4\16\3:\3\21\2:\2\22\1>\0\2\0014\0\0\0%\1\23\0>\0\2\0027\0\24\0>\0\1\0023\1\29\0003\2\26\0003\3\27\0:\3\28\2:\2\30\0013\2\31\0:\2 \1:\1\25\0G\0\1\0\fused_by\1\2\0\0\amd\17install_info\1\0\1\rfiletype\rmarkdown\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\1\burl5https://github.com/ikatyang/tree-sitter-markdown\rmarkdown\23get_parser_configs\28nvim-treesitter.parsers\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\2\21node_incremental\6+\21node_decremental\6-\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\2\venable\2\vindent\fdisable\1\3\0\0\thtml\vpython\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-code-dark
time([[Config for vim-code-dark]], true)
try_loadstring("\27LJ\1\0028\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\25colorscheme codedark\bcmd\bvim\0", "config", "vim-code-dark")
time([[Config for vim-code-dark]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2š\4\0\0\4\0\16\0\0194\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\14\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\2:\2\15\1>\0\2\1G\0\1\0\nsigns\1\0\2\vlinehl\1\nnumhl\2\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\19GitSignsChange\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ–”\nnumhl\21GitSignsDeleteNr\vlinehl\19GitSignsDelete\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\bâ–\nnumhl\21GitSignsDeleteNr\vlinehl\19GitSignsDelete\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”ƒ\nnumhl\21GitSignsChangeNr\vlinehl\19GitSignsChange\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”ƒ\nnumhl\18GitSignsAddNr\vlinehl\16GitSignsAdd\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lsputils
time([[Config for nvim-lsputils]], true)
try_loadstring("\27LJ\1\2õ\6\0\0\4\0\30\0I4\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\5\0>\1\2\0027\1\6\1:\1\3\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\t\1:\1\a\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\v\1:\1\n\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\r\1:\1\f\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\15\1:\1\14\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\17\1:\1\16\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\20\1:\1\18\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\22\1:\1\21\0003\0\23\0004\1\0\0007\1\24\0013\2\28\0003\3\26\0:\0\27\3:\3\29\2:\2\25\1G\0\1\0\tlist\1\0\0\17border_chars\1\0\0\30lsp_utils_codeaction_opts\6g\1\0\6\19MID_HORIZONTAL\bâ”€\17MID_VERTICAL\bâ”‚\rTOP_LEFT\bâ•­\16BOTTOM_LEFT\bâ•°\14TOP_RIGHT\bâ•®\17BOTTOM_RIGHT\bâ•¯\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0", "config", "nvim-lsputils")
time([[Config for nvim-lsputils]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\1\2Å\1\0\0\4\0\a\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0003\2\4\0003\3\5\0:\3\6\2>\0\3\1G\0\1\0\31multi_line_comment_strings\1\3\0\0\t--[[\a]]\1\0\2 prefer_single_line_comments\2\31single_line_comment_string\a--\blua\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2·\3\0\0\4\0\24\0%4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\16\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\0023\3\14\0:\3\15\2:\2\17\0013\2\18\0002\3\0\0:\3\a\0022\3\0\0:\3\5\0023\3\19\0:\3\t\0023\3\20\0:\3\v\0022\3\0\0:\3\r\0022\3\0\0:\3\15\2:\2\21\0013\2\22\0:\2\23\1>\0\2\1G\0\1\0\foptions\1\0\3\25component_separators\5\23section_separators\5\ntheme\rcodedark\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2·\4\0\1\3\0\r\0)4\1\0\0007\1\1\1%\2\2\0>\1\2\0014\1\0\0007\1\1\1%\2\3\0>\1\2\0017\1\4\0007\1\5\1\15\0\1\0T\2\4€4\1\0\0007\1\1\1%\2\6\0>\1\2\0017\1\4\0007\1\a\1\15\0\1\0T\2\b€4\1\0\0007\1\1\1%\2\b\0>\1\2\0014\1\0\0007\1\1\1%\2\t\0>\1\2\0017\1\4\0007\1\n\1\15\0\1\0T\2\4€4\1\0\0007\1\1\1%\2\v\0>\1\2\0014\1\0\0007\1\1\1%\2\f\0>\1\2\1G\0\1\0\16augroup ENDEau BufWritePre <buffer> silent lua vim.lsp.buf.formatting_sync()\24document_formattingHau CursorMoved <buffer> silent lua vim.lsp.buf.document_highlight()Rau CursorMoved,InsertEnter <buffer> silent lua vim.lsp.buf.clear_references()\23document_highlightDau CursorHoldI <buffer> silent lua vim.lsp.buf.signature_help()\19signature_help\26resolved_capabilities\bau!\25augroup lsp_commands\bcmd\bvimõ\5\0\0\v\3*\1Y)\0\0\0004\1\0\0007\1\1\0017\1\2\1%\2\3\0>\1\2\2\t\1\0\0T\1\2€%\0\4\0T\1\21€4\1\0\0007\1\1\0017\1\2\1%\2\5\0>\1\2\2\t\1\0\0T\1\2€%\0\6\0T\1\f€4\1\0\0007\1\1\0017\1\2\1%\2\a\0>\1\2\2\t\1\0\0T\1\2€%\0\b\0T\1\3€4\1\t\0%\2\n\0>\1\2\1%\1\v\0\16\2\1\0%\3\f\0\16\4\0\0%\5\r\0$\2\5\2+\3\0\0007\3\14\0037\3\15\0033\4\18\0003\5\16\0;\2\1\5\16\6\1\0%\a\17\0$\6\a\6;\6\3\5:\5\19\4+\5\1\0:\5\20\4+\5\2\0:\5\21\0043\5'\0003\6\27\0003\a\22\0004\b\0\0007\b\23\b4\t\24\0007\t\25\t%\n\26\0>\b\3\2:\b\25\a:\a\28\0063\a\30\0003\b\29\0:\b\31\a:\a \0063\a$\0002\b\0\b4\t\0\0007\t\1\t7\t!\t%\n\"\0>\t\2\2)\n\2\0009\n\t\b4\t\0\0007\t\1\t7\t!\t%\n#\0>\t\2\2)\n\2\0009\n\t\b:\b%\a:\a&\6:\6(\5:\5)\4>\3\2\1G\0\1\0\0À\1À\2À\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\bcmd\1\0\0\14/main.lua\1\3\0\0\0\a-E\nsetup\16sumneko_lua\25/lua-language-server\n/bin/2/home/kilometers/Projects/lua-language-server#Unsupported system for sumneko\nprint\fWindows\nwin32\nLinux\tunix\nmacOS\bmac\bhas\afn\bvim\2\5\0\0\a\3\24\1.)\0\0\0004\1\0\0007\1\1\0017\1\2\1%\2\3\0>\1\2\2\t\1\0\0T\1\5€3\1\4\0003\2\5\0:\2\6\1\16\0\1\0T\1\v€4\1\0\0007\1\1\0017\1\2\1%\2\a\0>\1\2\2\t\1\0\0T\1\4€3\1\b\0003\2\t\0:\2\6\1\16\0\1\0+\1\0\0007\1\n\0017\1\v\0013\2\f\0+\3\1\0:\3\r\2+\3\2\0:\3\14\0023\3\22\0003\4\15\0003\5\16\0003\6\17\0:\6\6\5:\5\18\0043\5\19\0003\6\20\0:\6\6\5:\5\21\4:\4\n\3:\3\23\2>\1\2\1G\0\1\0\0À\1À\2À\rsettings\1\0\0\18forwardSearch\1\3\0\0\r--unique\16%p#src:%l%f\1\0\2\vonSave\2\15executable\vokular\nbuild\1\a\0\0\19--outdir=build\14--synctex\f--print\16--keep-logs\25--keep-intermediates\a%f\1\0\3\vonSave\2\15executable\rtectonic\23forwardSearchAfter\2\1\0\1\17auxDirectory\nbuild\17capabilities\14on_attach\1\0\0\nsetup\vtexlab\1\3\0\0\r--unique\16%p#src:%l%f\1\0\2\vonSave\2\15executable\vokular\tunix\targs\1\4\0\0\a%l\a%p\a%f\1\0\2\vonSave\2\15executable>/Applications/Skim.app/Contents/SharedSupport/displayline\bmac\bhas\afn\bvim\2Ù\6\1\0\r\0!\0J4\0\0\0%\1\1\0>\0\2\0021\1\2\0004\2\3\0007\2\4\0027\2\5\0027\2\6\2>\2\1\0027\3\a\0027\3\b\0037\3\t\3)\4\2\0:\4\n\0031\3\v\0001\4\f\0004\5\0\0%\6\r\0>\5\2\0027\5\14\5>\5\1\0014\5\3\0007\5\15\0057\5\16\5%\6\17\0003\a\18\0>\5\3\0014\5\3\0007\5\15\0057\5\16\5%\6\19\0003\a\20\0>\5\3\0014\5\3\0007\5\15\0057\5\16\5%\6\21\0003\a\22\0>\5\3\0014\5\3\0007\5\15\0057\5\16\5%\6\23\0003\a\24\0>\5\3\1\16\5\3\0>\5\1\1\16\5\4\0>\5\1\0013\5\25\0004\6\26\0\16\a\5\0>\6\2\4D\t\16€4\v\27\0\16\f\t\0>\v\2\2\a\v\28\0T\v\a€6\v\n\0007\v\29\v3\f\30\0:\1\31\f:\2 \f>\v\2\1T\v\4€6\v\t\0007\v\29\v\16\f\n\0>\v\2\1B\t\3\3N\tî0\0\0€G\0\1\0\17capabilities\14on_attach\1\0\0\nsetup\vnumber\ttype\npairs\1\v\0\0\vclangd\ncssls\ngopls\bhls\rtsserver\thtml\vjsonls\fpyright\18rust_analyzer\vyamlls\1\0\2\ttext\bï™\vtexthl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\1\0\2\ttext\bïš\vtexthl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\bï±\vtexthl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\bï€\vtexthl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\afn\tinit\flspkind\0\0\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\1\2Õ\1\0\0\3\0\a\0\v4\0\0\0007\0\1\0007\0\2\0%\1\3\0003\2\4\0>\0\3\0014\0\0\0007\0\5\0%\1\6\0>\0\2\1G\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\1\0\2\ttext\bï ´\vtexthl\30LspDiagnosticsSignWarning\18LightBulbSign\16sign_define\afn\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], true)
vim.cmd [[source /home/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time([[Sourcing ftdetect script at: /home/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

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
local package_path_str = "/Users/kilometers/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/kilometers/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/kilometers/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/kilometers/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/kilometers/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  LuaSnip = {
    config = { "\27LJ\2\n‘\1\0\0\5\0\v\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0005\4\4\0B\1\3\0016\1\5\0009\1\6\0016\2\5\0009\2\6\0029\2\a\2'\3\b\0 \2\3\2=\2\a\0016\1\0\0'\3\t\0B\1\2\0029\1\n\1B\1\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\28~/.config/nvim/snippets\16runtimepath\bopt\bvim\1\2\0\0\6c\bcpp\17filetype_set\fluasnip\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["crates.nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/crates.nvim"
  },
  ["crazy8.nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/crazy8.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nö\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\2\nnumhl\2\vlinehl\1\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\19GitSignsChange\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b‚ñî\vlinehl\19GitSignsDelete\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b‚ñÅ\vlinehl\19GitSignsDelete\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b‚îÉ\vlinehl\19GitSignsChange\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b‚îÉ\vlinehl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["haskell-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n°\3\0\0\2\0\v\0\0256\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0K\0\1\0$indent_blankline_use_treesitter4indent_blankline_show_trailing_blankline_indent-indent_blankline_show_first_indent_level\b‚ñè\26indent_blankline_char\1\4\0\0\rterminal\vnofile\thelp%indent_blankline_buftype_exclude\1\b\0\0\rmarkdown\vpandoc\fvimwiki\17NeogitStatus\vpacker\btex\17tsplayground&indent_blankline_filetype_exclude\6g\bvim\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n≈\1\0\0\5\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0005\4\5\0=\4\6\3B\0\3\1K\0\1\0\31multi_line_comment_strings\1\3\0\0\t--[[\a]]\1\0\2 prefer_single_line_comments\2\31single_line_comment_string\a--\blua\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n∑\3\0\0\5\0\24\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0004\4\0\0=\4\a\0034\4\0\0=\4\5\0035\4\19\0=\4\t\0035\4\20\0=\4\v\0034\4\0\0=\4\r\0034\4\0\0=\4\15\3=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\foptions\1\0\3\25component_separators\5\23section_separators\5\ntheme\rcodedark\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\np\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvimõ\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expand§\1\0\1\5\2\a\1\0236\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\5Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\1X\1\vÄ-\1\1\0009\1\5\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\6\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\3¿\19expand_or_jump\23expand_or_jumpable\6n\n<C-n>\15pumvisible\afn\bvim\2ò\1\0\1\5\2\a\1\0256\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\5Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\1X\1\rÄ-\1\1\0009\1\5\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\6\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\3¿\tjump\rjumpable\6n\n<C-p>\15pumvisible\afn\bvim\2ü\1\0\1\5\2\a\0\22-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\fÄ6\1\2\0009\1\3\0019\1\4\1\15\0\1\0X\2\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\0¿\6i\30<C-G>u<Esc>[s1z=`]a<C-G>u\nspell\bopt\bvim\vexpand\15expandableæ\4\1\0\f\0(\0F3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0026\3\2\0'\5\4\0B\3\2\0029\4\5\0025\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\14\0009\b\v\0023\n\f\0005\v\r\0B\b\3\2=\b\15\a9\b\v\0023\n\16\0005\v\17\0B\b\3\2=\b\18\a9\b\v\0029\b\19\b)\n¸ˇB\b\2\2=\b\20\a9\b\v\0029\b\19\b)\n\4\0B\b\2\2=\b\21\a9\b\v\0029\b\22\bB\b\1\2=\b\23\a9\b\v\0029\b\24\bB\b\1\2=\b\25\a9\b\v\0029\b\26\b5\n\29\0009\v\27\0029\v\28\v=\v\30\nB\b\2\2=\b\31\a9\b\v\0023\n \0005\v!\0B\b\3\2=\b\"\a=\a\v\0064\a\5\0005\b#\0>\b\1\a5\b$\0>\b\2\a5\b%\0>\b\3\a5\b&\0>\b\4\a=\a'\6B\4\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\vcrates\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\1\0\1\tname\tpath\n<C-j>\1\2\0\0\6i\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0\0\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nw\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\5\bRGB\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\vRRGGBB\2\1\3\0\0\6*\f!packer\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\n’\1\0\0\4\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\1\0\2\ttext\bÔ†¥\vtexthl\30LspDiagnosticsSignWarning\18LightBulbSign\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n∑\4\0\1\4\0\r\0)6\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0019\1\4\0009\1\5\1\15\0\1\0X\2\4Ä6\1\0\0009\1\1\1'\3\6\0B\1\2\0019\1\4\0009\1\a\1\15\0\1\0X\2\bÄ6\1\0\0009\1\1\1'\3\b\0B\1\2\0016\1\0\0009\1\1\1'\3\t\0B\1\2\0019\1\4\0009\1\n\1\15\0\1\0X\2\4Ä6\1\0\0009\1\1\1'\3\v\0B\1\2\0016\1\0\0009\1\1\1'\3\f\0B\1\2\1K\0\1\0\16augroup ENDEau BufWritePre <buffer> silent lua vim.lsp.buf.formatting_sync()\24document_formattingHau CursorMoved <buffer> silent lua vim.lsp.buf.document_highlight()Rau CursorMoved,InsertEnter <buffer> silent lua vim.lsp.buf.clear_references()\23document_highlightDau CursorHoldI <buffer> silent lua vim.lsp.buf.signature_help()\19signature_help\26resolved_capabilities\bau!\25augroup lsp_commands\bcmd\bvimı\5\0\0\r\3*\1Y+\0\0\0006\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\t\1\0\0X\1\2Ä'\0\4\0X\1\21Ä6\1\0\0009\1\1\0019\1\2\1'\3\5\0B\1\2\2\t\1\0\0X\1\2Ä'\0\6\0X\1\fÄ6\1\0\0009\1\1\0019\1\2\1'\3\a\0B\1\2\2\t\1\0\0X\1\2Ä'\0\b\0X\1\3Ä6\1\t\0'\3\n\0B\1\2\1'\1\v\0\18\2\1\0'\3\f\0\18\4\0\0'\5\r\0&\2\5\2-\3\0\0009\3\14\0039\3\15\0035\5\18\0005\6\16\0>\2\1\6\18\a\1\0'\b\17\0&\a\b\a>\a\3\6=\6\19\5-\6\1\0=\6\20\5-\6\2\0=\6\21\0055\6'\0005\a\27\0005\b\22\0006\t\0\0009\t\23\t6\v\24\0009\v\25\v'\f\26\0B\t\3\2=\t\25\b=\b\28\a5\b\30\0005\t\29\0=\t\31\b=\b \a5\b$\0004\t\0\b6\n\0\0009\n\1\n9\n!\n'\f\"\0B\n\2\2+\v\2\0<\v\n\t6\n\0\0009\n\1\n9\n!\n'\f#\0B\n\2\2+\v\2\0<\v\n\t=\t%\b=\b&\a=\a(\6=\6)\5B\3\2\1K\0\1\0\0¿\1¿\2Ä\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\bcmd\1\0\0\14/main.lua\1\3\0\0\0\a-E\nsetup\16sumneko_lua\25/lua-language-server\n/bin/2/home/kilometers/Projects/lua-language-server#Unsupported system for sumneko\nprint\fWindows\nwin32\nLinux\tunix\nmacOS\bmac\bhas\afn\bvim\2ø\4\0\0\b\3\22\1++\0\0\0006\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\t\1\0\0X\1\5Ä5\1\4\0005\2\5\0=\2\6\1\18\0\1\0X\1\vÄ6\1\0\0009\1\1\0019\1\2\1'\3\a\0B\1\2\2\t\1\0\0X\1\4Ä5\1\b\0005\2\t\0=\2\6\1\18\0\1\0-\1\0\0009\1\n\0019\1\v\0015\3\f\0-\4\1\0=\4\r\3-\4\2\0=\4\14\0035\4\20\0005\5\15\0005\6\16\0005\a\17\0=\a\6\6=\6\18\5=\0\19\5=\5\n\4=\4\21\3B\1\2\1K\0\1\0\0¿\1¿\2Ä\rsettings\1\0\0\18forwardSearch\nbuild\1\a\0\0\19--outdir=build\14--synctex\f--print\16--keep-logs\25--keep-intermediates\a%f\1\0\3\15executable\rtectonic\23forwardSearchAfter\2\vonSave\2\1\0\1\17auxDirectory\nbuild\17capabilities\14on_attach\1\0\0\nsetup\vtexlab\1\3\0\0\r--unique\16%p#src:%l%f\1\0\2\15executable\vokular\vonSave\2\tunix\targs\1\4\0\0\a%l\a%p\a%f\1\0\2\15executable>/Applications/Skim.app/Contents/SharedSupport/displayline\vonSave\2\bmac\bhas\afn\bvim\2Ã\6\1\0\14\0\31\0L6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0003\3\t\0003\4\n\0006\5\0\0'\a\v\0B\5\2\0029\5\f\5B\5\1\0016\5\3\0009\5\r\0059\5\14\5'\a\15\0005\b\16\0B\5\3\0016\5\3\0009\5\r\0059\5\14\5'\a\17\0005\b\18\0B\5\3\0016\5\3\0009\5\r\0059\5\14\5'\a\19\0005\b\20\0B\5\3\0016\5\3\0009\5\r\0059\5\14\5'\a\21\0005\b\22\0B\5\3\1\18\5\3\0B\5\1\1\18\5\4\0B\5\1\0015\5\23\0006\6\24\0\18\b\5\0B\6\2\4H\t\16Ä6\v\25\0\18\r\t\0B\v\2\2\a\v\26\0X\v\aÄ8\v\n\0009\v\27\v5\r\28\0=\1\29\r=\2\30\rB\v\2\1X\v\4Ä8\v\t\0009\v\27\v\18\r\n\0B\v\2\1F\t\3\3R\tÓ2\0\0ÄK\0\1\0\17capabilities\14on_attach\1\0\0\nsetup\vnumber\ttype\npairs\1\v\0\0\vclangd\ncssls\ngopls\bhls\rtsserver\thtml\vjsonls\fpyright\18rust_analyzer\vyamlls\1\0\2\ttext\bÔÅô\vtexthl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\1\0\2\ttext\bÔÅö\vtexthl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\bÔÅ±\vtexthl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\bÔÄç\vtexthl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\afn\tinit\flspkind\0\0\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\2\nı\6\0\0\4\0\30\0I6\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\v\1=\1\n\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\r\1=\1\f\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\15\1=\1\14\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\17\1=\1\16\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\20\1=\1\18\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\22\1=\1\21\0005\0\23\0006\1\0\0009\1\24\0015\2\28\0005\3\26\0=\0\27\3=\3\29\2=\2\25\1K\0\1\0\tlist\1\0\0\17border_chars\1\0\0\30lsp_utils_codeaction_opts\6g\1\0\6\14TOP_RIGHT\b‚ïÆ\16BOTTOM_LEFT\b‚ï∞\rTOP_LEFT\b‚ï≠\17BOTTOM_RIGHT\b‚ïØ\17MID_VERTICAL\b‚îÇ\19MID_HORIZONTAL\b‚îÄ\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÛ\5\0\0\6\0!\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\3=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\16\4=\4\21\3=\3\22\2B\0\2\0016\0\0\0'\2\23\0B\0\2\0029\0\24\0B\0\1\0025\1\29\0005\2\26\0005\3\27\0=\3\28\2=\2\30\0015\2\31\0=\2 \1=\1\25\0K\0\1\0\fused_by\1\2\0\0\amd\17install_info\1\0\1\rfiletype\rmarkdown\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\1\burl5https://github.com/ikatyang/tree-sitter-markdown\rmarkdown\23get_parser_configs\28nvim-treesitter.parsers\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\2\21node_decremental\6-\21node_incremental\6+\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\2\vindent\fdisable\1\3\0\0\thtml\vpython\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  taskwiki = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/taskwiki"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nπ\4\0\0\a\0\25\00006\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\22\0005\3\6\0006\4\3\0'\6\a\0B\4\2\0029\4\b\0049\4\t\4=\4\n\0036\4\3\0'\6\a\0B\4\2\0029\4\v\0049\4\t\4=\4\f\0036\4\3\0'\6\a\0B\4\2\0029\4\r\0049\4\t\4=\4\14\0036\4\3\0'\6\15\0B\4\2\0029\4\16\0044\6\0\0B\4\2\2=\4\17\0035\4\19\0005\5\18\0=\5\20\4=\4\21\3=\3\23\2B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\24\0'\2\20\0B\0\2\1K\0\1\0\19load_extension\rdefaults\1\0\0\15extensions\15fzy_native\1\0\0\1\0\2\25override_file_sorter\2\28override_generic_sorter\1\ntheme\17get_dropdown\21telescope.themes\19qflist_preview\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\1\20layout_strategy\tflex\nsetup\14telescope\frequire:autocmd User TelescopePreviewerLoaded setlocal number\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-code-dark"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme codedark\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/vim-code-dark"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  vimwiki = {
    config = { "\27LJ\2\nÅ\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0K\0\1\0\26vimwiki_hl_cb_checked\23vimwiki_global_ext\27vimwiki_table_mappings\6g\bvim\0" },
    loaded = true,
    path = "/Users/kilometers/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÛ\5\0\0\6\0!\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\3=\3\17\0025\3\20\0005\4\18\0005\5\19\0=\5\16\4=\4\21\3=\3\22\2B\0\2\0016\0\0\0'\2\23\0B\0\2\0029\0\24\0B\0\1\0025\1\29\0005\2\26\0005\3\27\0=\3\28\2=\2\30\0015\2\31\0=\2 \1=\1\25\0K\0\1\0\fused_by\1\2\0\0\amd\17install_info\1\0\1\rfiletype\rmarkdown\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\1\burl5https://github.com/ikatyang/tree-sitter-markdown\rmarkdown\23get_parser_configs\28nvim-treesitter.parsers\16textobjects\vselect\1\0\0\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\2\21node_decremental\6-\21node_incremental\6+\1\0\1\venable\2\fautotag\1\0\1\venable\2\frainbow\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\2\vindent\fdisable\1\3\0\0\thtml\vpython\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nπ\4\0\0\a\0\25\00006\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\22\0005\3\6\0006\4\3\0'\6\a\0B\4\2\0029\4\b\0049\4\t\4=\4\n\0036\4\3\0'\6\a\0B\4\2\0029\4\v\0049\4\t\4=\4\f\0036\4\3\0'\6\a\0B\4\2\0029\4\r\0049\4\t\4=\4\14\0036\4\3\0'\6\15\0B\4\2\0029\4\16\0044\6\0\0B\4\2\2=\4\17\0035\4\19\0005\5\18\0=\5\20\4=\4\21\3=\3\23\2B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\24\0'\2\20\0B\0\2\1K\0\1\0\19load_extension\rdefaults\1\0\0\15extensions\15fzy_native\1\0\0\1\0\2\25override_file_sorter\2\28override_generic_sorter\1\ntheme\17get_dropdown\21telescope.themes\19qflist_preview\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\1\20layout_strategy\tflex\nsetup\14telescope\frequire:autocmd User TelescopePreviewerLoaded setlocal number\bcmd\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n∑\4\0\1\4\0\r\0)6\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0019\1\4\0009\1\5\1\15\0\1\0X\2\4Ä6\1\0\0009\1\1\1'\3\6\0B\1\2\0019\1\4\0009\1\a\1\15\0\1\0X\2\bÄ6\1\0\0009\1\1\1'\3\b\0B\1\2\0016\1\0\0009\1\1\1'\3\t\0B\1\2\0019\1\4\0009\1\n\1\15\0\1\0X\2\4Ä6\1\0\0009\1\1\1'\3\v\0B\1\2\0016\1\0\0009\1\1\1'\3\f\0B\1\2\1K\0\1\0\16augroup ENDEau BufWritePre <buffer> silent lua vim.lsp.buf.formatting_sync()\24document_formattingHau CursorMoved <buffer> silent lua vim.lsp.buf.document_highlight()Rau CursorMoved,InsertEnter <buffer> silent lua vim.lsp.buf.clear_references()\23document_highlightDau CursorHoldI <buffer> silent lua vim.lsp.buf.signature_help()\19signature_help\26resolved_capabilities\bau!\25augroup lsp_commands\bcmd\bvimı\5\0\0\r\3*\1Y+\0\0\0006\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\t\1\0\0X\1\2Ä'\0\4\0X\1\21Ä6\1\0\0009\1\1\0019\1\2\1'\3\5\0B\1\2\2\t\1\0\0X\1\2Ä'\0\6\0X\1\fÄ6\1\0\0009\1\1\0019\1\2\1'\3\a\0B\1\2\2\t\1\0\0X\1\2Ä'\0\b\0X\1\3Ä6\1\t\0'\3\n\0B\1\2\1'\1\v\0\18\2\1\0'\3\f\0\18\4\0\0'\5\r\0&\2\5\2-\3\0\0009\3\14\0039\3\15\0035\5\18\0005\6\16\0>\2\1\6\18\a\1\0'\b\17\0&\a\b\a>\a\3\6=\6\19\5-\6\1\0=\6\20\5-\6\2\0=\6\21\0055\6'\0005\a\27\0005\b\22\0006\t\0\0009\t\23\t6\v\24\0009\v\25\v'\f\26\0B\t\3\2=\t\25\b=\b\28\a5\b\30\0005\t\29\0=\t\31\b=\b \a5\b$\0004\t\0\b6\n\0\0009\n\1\n9\n!\n'\f\"\0B\n\2\2+\v\2\0<\v\n\t6\n\0\0009\n\1\n9\n!\n'\f#\0B\n\2\2+\v\2\0<\v\n\t=\t%\b=\b&\a=\a(\6=\6)\5B\3\2\1K\0\1\0\0¿\1¿\2Ä\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\bcmd\1\0\0\14/main.lua\1\3\0\0\0\a-E\nsetup\16sumneko_lua\25/lua-language-server\n/bin/2/home/kilometers/Projects/lua-language-server#Unsupported system for sumneko\nprint\fWindows\nwin32\nLinux\tunix\nmacOS\bmac\bhas\afn\bvim\2ø\4\0\0\b\3\22\1++\0\0\0006\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\t\1\0\0X\1\5Ä5\1\4\0005\2\5\0=\2\6\1\18\0\1\0X\1\vÄ6\1\0\0009\1\1\0019\1\2\1'\3\a\0B\1\2\2\t\1\0\0X\1\4Ä5\1\b\0005\2\t\0=\2\6\1\18\0\1\0-\1\0\0009\1\n\0019\1\v\0015\3\f\0-\4\1\0=\4\r\3-\4\2\0=\4\14\0035\4\20\0005\5\15\0005\6\16\0005\a\17\0=\a\6\6=\6\18\5=\0\19\5=\5\n\4=\4\21\3B\1\2\1K\0\1\0\0¿\1¿\2Ä\rsettings\1\0\0\18forwardSearch\nbuild\1\a\0\0\19--outdir=build\14--synctex\f--print\16--keep-logs\25--keep-intermediates\a%f\1\0\3\15executable\rtectonic\23forwardSearchAfter\2\vonSave\2\1\0\1\17auxDirectory\nbuild\17capabilities\14on_attach\1\0\0\nsetup\vtexlab\1\3\0\0\r--unique\16%p#src:%l%f\1\0\2\15executable\vokular\vonSave\2\tunix\targs\1\4\0\0\a%l\a%p\a%f\1\0\2\15executable>/Applications/Skim.app/Contents/SharedSupport/displayline\vonSave\2\bmac\bhas\afn\bvim\2Ã\6\1\0\14\0\31\0L6\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0026\3\0\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0B\3\2\2\18\2\3\0003\3\t\0003\4\n\0006\5\0\0'\a\v\0B\5\2\0029\5\f\5B\5\1\0016\5\3\0009\5\r\0059\5\14\5'\a\15\0005\b\16\0B\5\3\0016\5\3\0009\5\r\0059\5\14\5'\a\17\0005\b\18\0B\5\3\0016\5\3\0009\5\r\0059\5\14\5'\a\19\0005\b\20\0B\5\3\0016\5\3\0009\5\r\0059\5\14\5'\a\21\0005\b\22\0B\5\3\1\18\5\3\0B\5\1\1\18\5\4\0B\5\1\0015\5\23\0006\6\24\0\18\b\5\0B\6\2\4H\t\16Ä6\v\25\0\18\r\t\0B\v\2\2\a\v\26\0X\v\aÄ8\v\n\0009\v\27\v5\r\28\0=\1\29\r=\2\30\rB\v\2\1X\v\4Ä8\v\t\0009\v\27\v\18\r\n\0B\v\2\1F\t\3\3R\tÓ2\0\0ÄK\0\1\0\17capabilities\14on_attach\1\0\0\nsetup\vnumber\ttype\npairs\1\v\0\0\vclangd\ncssls\ngopls\bhls\rtsserver\thtml\vjsonls\fpyright\18rust_analyzer\vyamlls\1\0\2\ttext\bÔÅô\vtexthl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\1\0\2\ttext\bÔÅö\vtexthl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\bÔÅ±\vtexthl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\bÔÄç\vtexthl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\afn\tinit\flspkind\0\0\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n’\1\0\0\4\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\1\0\2\ttext\bÔ†¥\vtexthl\30LspDiagnosticsSignWarning\18LightBulbSign\16sign_define\afn\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\2\n≈\1\0\0\5\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0005\4\5\0=\4\6\3B\0\3\1K\0\1\0\31multi_line_comment_strings\1\3\0\0\t--[[\a]]\1\0\2 prefer_single_line_comments\2\31single_line_comment_string\a--\blua\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\nÅ\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0K\0\1\0\26vimwiki_hl_cb_checked\23vimwiki_global_ext\27vimwiki_table_mappings\6g\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nö\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\2\nnumhl\2\vlinehl\1\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\19GitSignsChange\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b‚ñî\vlinehl\19GitSignsDelete\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b‚ñÅ\vlinehl\19GitSignsDelete\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b‚îÉ\vlinehl\19GitSignsChange\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b‚îÉ\vlinehl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n∑\3\0\0\5\0\24\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0004\4\0\0=\4\a\0034\4\0\0=\4\5\0035\4\19\0=\4\t\0035\4\20\0=\4\v\0034\4\0\0=\4\r\0034\4\0\0=\4\15\3=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\foptions\1\0\3\25component_separators\5\23section_separators\5\ntheme\rcodedark\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lsputils
time([[Config for nvim-lsputils]], true)
try_loadstring("\27LJ\2\nı\6\0\0\4\0\30\0I6\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\v\1=\1\n\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\r\1=\1\f\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\15\1=\1\14\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\17\1=\1\16\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\20\1=\1\18\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\22\1=\1\21\0005\0\23\0006\1\0\0009\1\24\0015\2\28\0005\3\26\0=\0\27\3=\3\29\2=\2\25\1K\0\1\0\tlist\1\0\0\17border_chars\1\0\0\30lsp_utils_codeaction_opts\6g\1\0\6\14TOP_RIGHT\b‚ïÆ\16BOTTOM_LEFT\b‚ï∞\rTOP_LEFT\b‚ï≠\17BOTTOM_RIGHT\b‚ïØ\17MID_VERTICAL\b‚îÇ\19MID_HORIZONTAL\b‚îÄ\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0", "config", "nvim-lsputils")
time([[Config for nvim-lsputils]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n°\3\0\0\2\0\v\0\0256\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0K\0\1\0$indent_blankline_use_treesitter4indent_blankline_show_trailing_blankline_indent-indent_blankline_show_first_indent_level\b‚ñè\26indent_blankline_char\1\4\0\0\rterminal\vnofile\thelp%indent_blankline_buftype_exclude\1\b\0\0\rmarkdown\vpandoc\fvimwiki\17NeogitStatus\vpacker\btex\17tsplayground&indent_blankline_filetype_exclude\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nw\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\5\bRGB\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\vRRGGBB\2\1\3\0\0\6*\f!packer\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n‘\1\0\0\5\0\v\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0005\4\4\0B\1\3\0016\1\5\0009\1\6\0016\2\5\0009\2\6\0029\2\a\2'\3\b\0 \2\3\2=\2\a\0016\1\0\0'\3\t\0B\1\2\0029\1\n\1B\1\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\28~/.config/nvim/snippets\16runtimepath\bopt\bvim\1\2\0\0\6c\bcpp\17filetype_set\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: vim-code-dark
time([[Config for vim-code-dark]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme codedark\bcmd\bvim\0", "config", "vim-code-dark")
time([[Config for vim-code-dark]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\np\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvimõ\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expand§\1\0\1\5\2\a\1\0236\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\5Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\1X\1\vÄ-\1\1\0009\1\5\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\6\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\3¿\19expand_or_jump\23expand_or_jumpable\6n\n<C-n>\15pumvisible\afn\bvim\2ò\1\0\1\5\2\a\1\0256\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\5Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\1X\1\rÄ-\1\1\0009\1\5\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\6\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\3¿\tjump\rjumpable\6n\n<C-p>\15pumvisible\afn\bvim\2ü\1\0\1\5\2\a\0\22-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\fÄ6\1\2\0009\1\3\0019\1\4\1\15\0\1\0X\2\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\0¿\6i\30<C-G>u<Esc>[s1z=`]a<C-G>u\nspell\bopt\bvim\vexpand\15expandableæ\4\1\0\f\0(\0F3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0026\3\2\0'\5\4\0B\3\2\0029\4\5\0025\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\14\0009\b\v\0023\n\f\0005\v\r\0B\b\3\2=\b\15\a9\b\v\0023\n\16\0005\v\17\0B\b\3\2=\b\18\a9\b\v\0029\b\19\b)\n¸ˇB\b\2\2=\b\20\a9\b\v\0029\b\19\b)\n\4\0B\b\2\2=\b\21\a9\b\v\0029\b\22\bB\b\1\2=\b\23\a9\b\v\0029\b\24\bB\b\1\2=\b\25\a9\b\v\0029\b\26\b5\n\29\0009\v\27\0029\v\28\v=\v\30\nB\b\2\2=\b\31\a9\b\v\0023\n \0005\v!\0B\b\3\2=\b\"\a=\a\v\0064\a\5\0005\b#\0>\b\1\a5\b$\0>\b\2\a5\b%\0>\b\3\a5\b&\0>\b\4\a=\a'\6B\4\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\vcrates\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\1\0\1\tname\tpath\n<C-j>\1\2\0\0\6i\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], true)
vim.cmd [[source /Users/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time([[Sourcing ftdetect script at: /Users/kilometers/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

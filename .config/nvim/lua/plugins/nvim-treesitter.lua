return function()
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
      enable = true,
      -- disable = {},
    },
    indent = {
      enable = true,
      -- disable = {},
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
  }

  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
  parser_config.markdown = {
    install_info = {
      url = "https://github.com/ikatyang/tree-sitter-markdown", -- local path or git repo
      files = {"src/parser.c", "src/scanner.cc"}
    },
    filetype = "markdown", -- if filetype does not agrees with parser name
    used_by = {"md"} -- additional filetypes that use this parser
  }
  -- parser_config.tex = {
  --   install_info = {
  --     url = "https://github.com/latex-lsp/tree-sitter-latex", -- local path or git repo
  --     files = {"src/parser.c", "src/binding.cc"}
  --   },
  --   filetype = "tex", -- if filetype does not agrees with parser name
  --   used_by = {"tex", "plaintex"} -- additional filetypes that use this parser
  -- }
end

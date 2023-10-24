return {
{"nvim-treesitter/nvim-treesitter",
 build = ":TSUpdate",
 opts= {
  -- Add a language of your choice
  -- ensure_installed = {"cpp", "python", "lua", "java", "javascript", },
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  indent = { enable = true, disable = { "yaml" } },
 },
 config = function()
     local tsconfig = require('nvim-treesitter.configs')
     tsconfig.setup {
         highlight = {
            enable = true,
            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = true,
          },
         rainbow = {
            enable = true,
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        }
        }
    end
}
}

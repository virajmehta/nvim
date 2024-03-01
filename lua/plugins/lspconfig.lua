return {
    {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        local configs = require 'lspconfig.configs'
        local util = require 'lspconfig.util'

        lspconfig.pyright.setup{}
        lspconfig.ruff_lsp.setup{
          init_options = {
            settings = {
              -- Any extra CLI arguments for `ruff` go here.
              args = {},
            }
          }
        }

        lspconfig.tsserver.setup{}
        -- lspconfig.rust_analyzer.setup{}
        lspconfig.texlab.setup{}
    end,
    },
}

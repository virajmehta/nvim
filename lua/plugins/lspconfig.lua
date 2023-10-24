return {
    {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        lspconfig.pyright.setup{}
        lspconfig.tsserver.setup{}
        lspconfig.rust_analyzer.setup{}
    end,
    },
}

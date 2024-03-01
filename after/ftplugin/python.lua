vim.keymap.set('n',
'<leader>h',
'<cmd>lua vim.lsp.buf.hover()<CR>',
{noremap = true, silent = true})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.py"},
  callback = function()
    -- Retrieve the current buffer's LSP clients
    local clients = vim.lsp.get_active_clients()

    -- Filter for the client you want, e.g., "pyright"
    local client_to_use = nil
    for _, client in ipairs(clients) do
      if client.name == "ruff_lsp" then  -- Change "pyright" to the name of your LSP
        client_to_use = client
        break
      end
    end

    -- Only format using the specified LSP client
    if client_to_use then
      vim.lsp.buf.format({
        timeout_ms = 1000,
        filter = function(client)
          return client.id == client_to_use.id
        end
      })
    end
  end,
})

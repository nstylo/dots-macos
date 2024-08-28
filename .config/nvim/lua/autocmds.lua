require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "solidity",
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
  end,
})

autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "line" })
  end,
})

-- NOTE: https://github.com/NvChad/NvChad/issues/2854
autocmd("LspAttach", {
  callback = function(args)
    vim.schedule(function()
      vim.keymap.set("n", "<leader>ra", ":Lspsaga rename<CR>", { buffer = args.buf })
    end)
  end,
})

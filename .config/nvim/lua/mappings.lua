require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Command mode
map("n", ";", ":", { desc = "enter command mode", nowait = true })

-- Navigation
map("n", "<C-p>", ":Telescope find_files<CR>")
map("n", "<C-f>", ":Telescope live_grep<CR>")
map("n", "<C-b>", ":Telescope buffers<CR>")
map("n", "<leader>z", ":Telescope zoxide list<CR>")
map("n", "gp", ":Telescope resume<CR>")

-- Resizing windows
map("n", "<Up>", ":res +5<CR>")
map("n", "<Down>", ":res -5<CR>")
map("n", "<Right>", ":vertical res +5<CR>")
map("n", "<Left>", ":vertical res -5<CR>")

-- Fugitive integration
map("n", "<gl>", ":Git blame<CR>")

-- Markdown preview
map("n", "<leader>m>", ":MarkdownPreview<CR>")

-- clang stuff
-- map("n", "<M-o>", ":ClangdSwitchSourceHeader<CR>")

-- LSP stuff
map("n", "<leader>l", ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(), { 0 })<CR>")
-- map("n", "<leader>ra", ":Lspsaga rename<CR>")

-- Oil.nvim
map("n", "<leader>o", ":Oil --float<CR>")

-- todo comments
map("n", "<leader>t", ":TodoTelescope<CR>")

require "nvchad.mappings"

local map = vim.keymap.set

-- Command mode
map("n", ";", ":", { desc = "enter command mode", nowait = true })

-- Navigation
map("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-f>", ":Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<C-b>", ":Telescope buffers<CR>", { desc = "List buffers" })
map("n", "<leader>z", ":Telescope zoxide list<CR>", { desc = "Zoxide list" })
map("n", "gp", ":Telescope resume<CR>", { desc = "Resume last telescope search" })

-- Resizing windows
map("n", "<Up>", ":res +5<CR>", { desc = "Increase window height" })
map("n", "<Down>", ":res -5<CR>", { desc = "Decrease window height" })
map("n", "<Right>", ":vertical res +5<CR>", { desc = "Increase window width" })
map("n", "<Left>", ":vertical res -5<CR>", { desc = "Decrease window width" })

-- Fugitive integration
map("n", "<gl>", ":Git blame<CR>", { desc = "Git blame" })

-- Markdown preview
map("n", "<leader>m>", ":MarkdownPreview<CR>", { desc = "Open Markdown preview" })

-- Clang stuff
-- map("n", "<M-o>", ":ClangdSwitchSourceHeader<CR>")

-- LSP stuff
map(
  "n",
  "<leader>l",
  ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(), { 0 })<CR>",
  { desc = "Toggle inlay hints" }
)
-- map("n", "<leader>ra", ":Lspsaga rename<CR>")

-- Oil.nvim
map("n", "<leader>o", ":Oil --float<CR>", { desc = "Open Oil file manager" })

-- todo comments
map("n", "<leader>t", ":TodoTelescope<CR>", { desc = "Open TODO comments in Telescope" })

-- crates
local crates = require "crates"
map("n", "<leader>ct", crates.toggle, { desc = "Toggle crates inline versions", silent = true })
map("n", "<leader>cr", crates.reload, { desc = "Reload crates inline versions", silent = true })
map("n", "<leader>cv", crates.show_versions_popup, { desc = "Show crate versions", silent = true })
map("n", "<leader>cf", crates.show_features_popup, { desc = "Show crate features", silent = true })
map("n", "<leader>cd", crates.show_dependencies_popup, { desc = "Show crate dependencies", silent = true })
map("n", "<leader>cu", crates.update_crate, { desc = "Update crate", silent = true })
map("v", "<leader>cu", crates.update_crates, { desc = "Update crates (v)", silent = true })
map("n", "<leader>ca", crates.update_all_crates, { desc = "Update all crates", silent = true })
map("n", "<leader>cU", crates.upgrade_crate, { desc = "Upgrade crate", silent = true })
map("v", "<leader>cU", crates.upgrade_crates, { desc = "Upgrade crates (v)", silent = true })
map("n", "<leader>cA", crates.upgrade_all_crates, { desc = "Upgrade all crates", silent = true })
map(
  "n",
  "<leader>cx",
  crates.expand_plain_crate_to_inline_table,
  { desc = "Plain crate to inline table", silent = true }
)
map("n", "<leader>cX", crates.extract_crate_into_table, { desc = "Extract crate into table", silent = true })
map("n", "<leader>cH", crates.open_homepage, { desc = "Open crate homepage", silent = true })
map("n", "<leader>cR", crates.open_repository, { desc = "Open crate repo", silent = true })
map("n", "<leader>cD", crates.open_documentation, { desc = "Open crate docu", silent = true })
map("n", "<leader>cC", crates.open_crates_io, { desc = "Open crate crates.io", silent = true })
map("n", "<leader>cL", crates.open_lib_rs, { desc = "Open crate lib.rs", silent = true })

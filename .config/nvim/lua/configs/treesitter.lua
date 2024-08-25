local options = {
  ensure_installed = {
    "vim",
    "lua",
    "python",
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "comment",
    "bash",
    "yaml",
    "json",
    "markdown",
    "haskell",
    "json",
    "c",
    "cpp",
    "dockerfile",
    "go",
    "graphql",
    "vue",
    "query", -- treesitter query
    "sql",
    "rust",
    "svelte",
    "proto",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  highlight = {
    disable = { "vimdoc" },
  },
}

return options

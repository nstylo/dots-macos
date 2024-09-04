return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    cmd = "ConformInfo",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = require "configs.mason",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree",
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.treesitter",
  },

  -- {
  --   "max397574/better-escape.nvim",
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },

  {
    "nvim-treesitter/playground",
  },

  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = "cd app && yarn install",
  },

  {
    "tpope/vim-fugitive",
    -- TODO: should probably support all commands
    cmd = { "Git", "G" },
  },

  {
    "lark-parser/vim-lark-syntax",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "lark" },
  },

  {
    "raimon49/requirements.txt.vim",
    ft = { "requirements" },
    -- TODO: this is temporary until the shebang detection is not buggy anymore
    commit = "f3f13b9fdcb09a0903169c18014d413cbbb46c7b",
  },

  {
    "jvgrootveld/telescope-zoxide",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },

  {
    "vyperlang/vim-vyper",
    ft = { "vyper" },
  },

  {
    "gpanders/editorconfig.nvim",
  },

  {
    "stevearc/aerial.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup {
        layout = {
          max_width = { 40, 0.2 },
          min_width = 20,
        },
      }
      vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
    end,
    lazy = false,
  },

  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {
        lightbulb = {
          enable = false,
        },
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
    event = "LspAttach",
  },

  {
    "stevearc/oil.nvim",
    opts = {},
    cmd = { "Oil" },
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },

  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("todo-comments").setup {
        signs = true, -- show icons in the signs column
        sign_priority = 1, -- sign priority
        keywords = {
          FIX = {
            icon = " ", -- icon used for the sign, and in search results
            color = "error", -- can be a hex color, or a named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
            -- signs = false, -- configure signs for some keywords individually
          },
          TODO = { icon = " ", color = "todo" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
          TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
        colors = {
          error = { "@character" },
          warning = { "@boolean" },
          todo = { "@attribute" },
          info = { "@function" },
          hint = { "@constructor" },
          default = { "@character" },
          test = { "@character" },
        },
      }
    end,
  },

  {
    "saecki/crates.nvim",
    event = "BufRead",
    pattern = "Cargo.toml",
    tag = "stable",
    config = function()
      require("crates").setup {
        completion = {
          cmp = {
            enabled = true,
          },
        },
      }
      require("cmp").setup.buffer {
        sources = { { name = "crates" } },
      }
    end,
  },
}

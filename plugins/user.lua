return {
  {"ellisonleao/gruvbox.nvim"},
 {
      "max397574/better-escape.nvim",
       event = "InsertEnter",
       config = function()
         require("better_escape").setup()
       end,
     },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "xero/miasma.nvim",
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "echasnovski/mini.nvim",
    lazy = false,
    config = function()
      require("mini.map").setup()
      require("mini.indentscope").setup()
      require("mini.completion").setup()
    end,
  },
  {
    "crusj/bookmarks.nvim",
    branch = "main",
    dependencies = { "nvim-web-devicons" },
    config = function()
      require("bookmarks").setup {}
      require("telescope").load_extension "bookmarks"
    end,
  },
  {
    "gfanto/fzf-lsp.nvim",
    lazy = false,
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },
  {
    "namadnuno/neoi18n",
  },
  {
    "VidocqH/lsp-lens.nvim",
    config = function()
      require("lsp-lens").setup {
        enable = true,
        include_declaration = false, -- Reference include declaration
        sections = { -- Enable / Disable specific request
          definition = false,
          references = true,
          implementation = true,
        },
        ignore_filetype = {
          "prisma",
        },
      }
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  { "VidocqH/lsp-lens.nvim", opts = { enable = true } },
  {
    "jinzhongjia/LspUI.nvim",
    event = "VeryLazy",
    config = function()
      require("LspUI").setup()
    end,
  },
  {
    "ray-x/navigator.lua",
    requires = {
      { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
      { "neovim/nvim-lspconfig" },
    },}
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}

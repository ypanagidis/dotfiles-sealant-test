return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.lsp")
    end,
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("plugins.fidget")
    end,
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("plugins.conform")
    end,
  },
  {
    "saghen/blink.cmp",
    version = "*",
    config = function()
      require("plugins.blink")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("plugins.treesitter")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("plugins.treesitter-context")
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    config = function()
      require("plugins.snacks")
    end,
  },
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify" },
  {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    config = function()
      require("plugins.noice")
    end,
  },
  {
    "echasnovski/mini.nvim",
    config = function()
      require("plugins.mini")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.bufferline")
    end,
  },
  { "nvim-tree/nvim-web-devicons" },
  {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    config = function()
      require("plugins.ui")
    end,
  },
  { "nvim-lualine/lualine.nvim" },
  {
    "stevearc/oil.nvim",
    config = function()
      require("plugins.oil")
    end,
  },
  {
    "mikavilpas/yazi.nvim",
    config = function()
      require("plugins.yazi")
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    config = function()
      require("plugins.tmux")
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.trouble")
    end,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("plugins.ts-comments")
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("plugins.supermaven")
    end,
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("plugins.which-key")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.gitsigns")
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.todo-comments")
    end,
  },
  { "nvim-lua/plenary.nvim" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("plugins.colorizer")
    end,
  },
}

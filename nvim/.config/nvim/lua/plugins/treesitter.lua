local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
if not ok then
  vim.schedule(function()
    vim.notify("nvim-treesitter is not installed yet. Run :Lazy sync", vim.log.levels.WARN)
  end)
  return
end

ts_configs.setup({
  ensure_installed = {
    "bash",
    "css",
    "html",
    "javascript",
    "json",
    "jsonc",
    "lua",
    "markdown",
    "markdown_inline",
    "nix",
    "regex",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
  },
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
})

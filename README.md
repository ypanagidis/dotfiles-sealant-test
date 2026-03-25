# Dotfiles (non-Nix)

This directory is a plain dotfiles setup extracted from `nixcfg`.

## Included

- `zsh`: `.zshrc`, `.p10k.zsh`
- `nvim`: full config under `.config/nvim` using `lazy.nvim`
- `tmux`: `.tmux.conf` (with TPM plugins)
- `ghostty`: `~/.config/ghostty/config` + cyberdream theme
- `btop`: `~/.config/btop/btop.conf` + themes
- `yazi`: `~/.config/yazi/yazi.toml`
- `git`: `.gitconfig`

## Apply with stow

From this directory:

```bash
./install.sh
```

or manually:

```bash
stow -t "$HOME" zsh git tmux ghostty btop yazi nvim
```

## Neovim notes

- Plugin manager is `lazy.nvim` (bootstrapped in `nvim/.config/nvim/init.lua`).
- Requires Neovim `0.11+` (your LSP config uses `vim.lsp.config` + `vim.lsp.enable`).
- Your previous Lua config files were carried over from `nixcfg/modules/ides/nvim-config/nvim/lua`.
- After first link, install plugins:

```bash
nvim +Lazy!\ sync +qa
```

If you ever see `module 'nvim-treesitter.configs' not found`:

```bash
rm -rf ~/.local/share/nvim/lazy/nvim-treesitter
nvim +Lazy!\ sync +qa
```

## External tools expected by this config

- CLI/tools: `git`, `zsh`, `tmux`, `ghostty`, `btop`, `yazi`, `fzf`, `fd`, `eza`, `bat`, `ripgrep`, `lazygit`
- Neovim/LSP/formatters: `typescript-language-server`, `tsgo`, `oxlint`, `tailwindcss-language-server`, `prettierd`, `prettier`, `stylua`, `nixfmt`, `oxfmt`

Install these with your normal package manager (`apt`, `dnf`, `pacman`, `brew`, `npm`, etc.).

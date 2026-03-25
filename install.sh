#!/usr/bin/env bash
set -euo pipefail

PACKAGES=(zsh git tmux ghostty btop yazi nvim)

if ! command -v stow >/dev/null 2>&1; then
  echo "GNU stow is required."
  echo "Install it with your package manager and rerun this script."
  exit 1
fi

echo "Stowing: ${PACKAGES[*]}"
stow -v -t "$HOME" "${PACKAGES[@]}"

echo "Done."
echo ""
echo "Next steps:"
echo "1) Install Oh My Zsh + Powerlevel10k"
echo "   git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh"
echo "   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k"
echo ""
echo "2) Install tmux plugin manager (TPM)"
echo "   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
echo "   Then open tmux and press prefix + I"
echo ""
echo "3) Start Neovim and install plugins"
echo "   nvim +Lazy!\ sync +qa"

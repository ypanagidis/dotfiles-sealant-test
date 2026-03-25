export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  sudo
  docker
  kubectl
  npm
  fzf
  z
  vi-mode
)

if [ -d "$ZSH" ]; then
  source "$ZSH/oh-my-zsh.sh"
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export LIBVIRT_DEFAULT_URI="qemu:///system"
fi

VI_MODE_SET_CURSOR=true

bindkey '^H' backward-kill-word
bindkey '^?' backward-delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

bindkey '^f' clear-screen
bindkey -M viins '^f' clear-screen
bindkey -M vicmd '^f' clear-screen
bindkey '^L' clear-screen
bindkey -M viins '^L' clear-screen
bindkey -M vicmd '^L' clear-screen

bindkey -M vicmd '^C' send-break
bindkey -M viins 'jk' vi-cmd-mode

if command -v fzf >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

  _fzf_preview_cmd='
    if [ -d {} ]; then eza -lT --level=2 --icons=always --color=always {} | head -200
    else bat --style=numbers --color=always --line-range :200 {} 2>/dev/null
    fi'

  export FZF_DEFAULT_OPTS="--border --layout=reverse --preview-window=right:60%:wrap --preview '$_fzf_preview_cmd'"
fi

alias lgit="lazygit"
alias p="pnpm"
alias cm="cd ~/Developer/Work/UP/mono/"
alias cs="cd ~/Developer/sandbox/"
alias sa="cd ~/Developer/OS/Sealant/"
alias cn="cd ~/dotfiles/"
alias c="cursor ."
alias n="nvim"

if command -v yazi >/dev/null 2>&1; then
  function y() {
    local tmp cwd
    tmp="$(mktemp -t yazi-cwd.XXXXXX)"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp" 2>/dev/null)" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
      cd -- "$cwd" || return
    fi
    rm -f -- "$tmp"
  }
fi

if command -v eza >/dev/null 2>&1; then
  alias l="eza --icons=always"
  alias la="eza -a --icons=always"
  alias lh="eza -ad --icons=always .*"
  alias ll="eza -lg --icons=always"
  alias lla="eza -lag --icons=always"
  alias llh="eza -lagd --icons=always .*"
  alias ls="eza --icons=always"
  alias lt2="eza -lTg --level=2 --icons=always"
  alias lt3="eza -lTg --level=3 --icons=always"
  alias lt4="eza -lTg --level=4 --icons=always"
  alias lt="eza -lTg --icons=always"
  alias lta2="eza -lTag --level=2 --icons=always"
  alias lta3="eza -lTag --level=3 --icons=always"
  alias lta4="eza -lTag --level=4 --icons=always"
  alias lta="eza -lTag --icons=always"
fi

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

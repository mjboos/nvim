# Neovim Configuration

Minimal Neovim config using [lazy.nvim](https://github.com/folke/lazy.nvim) and Lua.

## Plugins

- [diffview.nvim](https://github.com/sindrets/diffview.nvim) — Git diff and merge tool
- [vim-fugitive](https://github.com/tpope/vim-fugitive) — Git integration
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) — File explorer
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — Statusline
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) — Indentation guides
- [solarized.nvim](https://github.com/maxmx03/solarized.nvim) — Solarized colorscheme
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) — File icons

## Requirements

- Neovim >= 0.9.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons in the file tree and statusline)

## Installation

### macOS

```bash
# Install Neovim
brew install neovim

# Install a Nerd Font (e.g. JetBrains Mono)
brew install --cask font-jetbrains-mono-nerd-font
```

### Linux (Ubuntu/Debian)

```bash
# Option 1: Via apt (check that the version is >= 0.9)
sudo apt update && sudo apt install neovim

# Option 2: Download AppImage if apt version is too old
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
```

For Nerd Fonts on Linux, download from https://www.nerdfonts.com/font-downloads,
extract to `~/.local/share/fonts/`, and run `fc-cache -fv`.

### Setup

```bash
# Back up existing config if needed
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repository
git clone https://github.com/mjboos/nvim.git ~/.config/nvim

# Open Neovim — lazy.nvim will bootstrap itself and install all plugins automatically
nvim
```

## Key Mappings

| Key | Action |
|-----|--------|
| `-` | Leader key |
| `<Space>` | Toggle fold |
| `<C-n>` | Toggle file tree |
| `<leader>s` | Search/replace word under cursor |
| `<leader>do` | Open Diffview |
| `<leader>dc` | Close Diffview |
| `<leader>dh` | File history (current file) |
| `<leader>dH` | Branch history |
| `<leader>1` | Toggle 80-char column highlight |

# derry.nvim

A dark Neovim colorscheme.

## Requirements

- Neovim 0.8+
- `termguicolors` enabled (set automatically by the colorscheme)

## Plugins supported

blink.cmp, devicons, himalaya, sniprun, vimwiki, calcium, fidget, LSP,
tree-sitter, which-key, colorizer, flash, mini.nvim, harpoon, snacks.nvim,
undotree, nvim-tree, gitsigns, nvim-cmp (fallback), telescope (fallback),
nvim-notify, indent-blankline.

## Installation

### lazy.nvim

```lua
{
  "YOUR_USERNAME/derry.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("derry")
  end,
}
```

### packer.nvim

```lua
use({
  "YOUR_USERNAME/derry.nvim",
  config = function()
    vim.cmd.colorscheme("derry")
  end,
})
```

## Usage

```vim
:colorscheme derry
```

## License

MIT

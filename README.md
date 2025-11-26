# pigment.nvim

A warm, naturalist colorscheme for Neovim, inspired by the historical Hull House Maps (1895) and vintage cartography.

[![pigment.png](https://i.postimg.cc/rp2LJJzr/pigment.png)](https://postimg.cc/VJgTsXqf)

Using [oil.nvim](https://github.com/stevearc/oil.nvim):

[![oil.png](https://i.postimg.cc/JnyvCHs9/oil.png)](https://postimg.cc/r0kQSmCJ)

## Requirements

* Neovim >= 0.8.0
* `vim.opt.termguicolors = true`
* **Note** If you're using Tmux, ensure you have set `term-256color` overrides, otherwise the paper background might look flat.

## Installation

### [Lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "alifoo/pigment.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("pigment.init").colorscheme()
  end,
}
```

## Status line support

Pigment supports both Mini.statusline and Lualine. For mini.statusline, you don't need to configure anything.

If you prefer Lualine, this plugin exports a dedicated theme table. You just need to point to it like this:
```lua
require('lualine').setup {
  options = {
    -- Point to the internal pigment theme
    theme = require('pigment.lualine').theme 
  }
}
```

## License
This plugin in under the MIT license.

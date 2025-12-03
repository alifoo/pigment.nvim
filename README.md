# pigment.nvim

A warm, naturalist colorscheme for Neovim/Alacritty, inspired by the historical Hull House Maps (1895) and vintage cartography.

[![pigment.png](https://i.postimg.cc/rp2LJJzr/pigment.png)](https://postimg.cc/VJgTsXqf)

Using [oil.nvim](https://github.com/stevearc/oil.nvim):

[![oil.png](https://i.postimg.cc/JnyvCHs9/oil.png)](https://postimg.cc/r0kQSmCJ)

## Features

* **Three Modes:**
    * `vintage` (Default): The classic Hull House warm paper look.
    * `dark`: A low-contrast dark mode using the same accent palette.
    * `canvas`: A high-contrast light mode with a pure white background.
* **Native Support:** Automatic support for `mini.statusline` and treesitter.
* **Extras:** Includes themes for Lualine, Alacritty (Vintage and Canvas) and Tmux (Canvas).

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
        -- Optional: Setup to choose a theme (vintage, dark, or canvas)
        require("pigment.init").setup({ theme = "vintage" })

        -- Load the colorscheme
        require("pigment.init").colorscheme()
    end,
}
```

## Alacritty theme
You can also use this theme in your terminal if you use Alacritty. You simply have to clone the repository and move the themes/pigment.toml file into a folder (typically the same folder as your alacritty.toml config) and import it there.
```toml
import = [
    "themes/pigment.toml"
]
```

## Status line support

Pigment supports both Mini.statusline and Lualine. For mini.statusline, you don't need to configure anything.

If you prefer Lualine, this plugin exports a dedicated theme table. You just need to point to it like this:
```lua
require('lualine').setup {
  options = {
    -- Use "vintage", "dark", or "canvas" to match your editor theme
    theme = require('pigment.lualine').get_theme("vintage") 
  }
}
```

## Reference for the main theme
The [Hull House maps](http://www.encyclopedia.chicagohistory.org/pages/410008.html) are a collection of sociological maps that visually documented the poverty, demographics, and labor conditions of Chicago's Near West Side during the Gilded Age.

The project consisted principally of two sets of large, full-color maps that covered the same geographic area (the 19th Ward of Chicago). This colorscheme main theme is based on the Nationalities map. shown below.

![NationalityMap](https://morphocode.com/wp-content/uploads/2017/02/morphocode-hull-haouse-map-nationality-2.jpg)

You can read more about it [here](http://www.encyclopedia.chicagohistory.org/pages/410008.html).

## License
This plugin in under the MIT license.

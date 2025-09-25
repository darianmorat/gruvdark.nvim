# gruvdark.nvim

Professional and balanced colorscheme for neovim  
Featuring a carefully thought-out palette designed for a minimal and pleasant look

> ### Notes:
>
> Font used: [JetBrains Mono NL Slashed](https://github.com/sharpjs/JetBrainsMonoSlashed)  
> Font weight: **Medium**

## Screenshots

#### Dark Mode

![Screenshot GruvDark](https://i.postimg.cc/FFzjcv07/dark.png)

#### Light Mode

![Screenshot GruvDark-Light](https://i.postimg.cc/q0DFFMbD/light.png)

## Installation

Using [Lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
   "darianmorat/gruvdark.nvim",
   lazy = false,
   priority = 1000,
   opts = {},
}
```

## Usage

Enable the colorscheme:

```lua
vim.cmd.colorscheme("gruvdark")
-- or
vim.cmd.colorscheme("gruvdark-light")
```

## Configuration

Additional settings for gruvdark are:

```lua
-- Default options:

opts = {
   transparent = false, -- Show or hide background
   colors = {}, -- Override default colors
   highlights = {}, -- Override highlight groups
},
```

## Contributing

Contributions are welcome!  
Bug reports and feature suggestions can also be submitted via [Issues](../../issues)

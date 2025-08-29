# gruvdark.nvim

<table width="100%">
  <tr>
    <th>Dark</th>
    <th>Light</th>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://i.postimg.cc/W2bNMsFH/dark.png" />
    </td>
    <td width="50%">
      <img src="https://i.postimg.cc/cdc1gvH3/light.png" />
    </td>
  </tr>
</table>

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

Enable the colorscheme:

```lua
vim.cmd.colorscheme("gruvdark")
```

## Configuration

```lua
opts = {
   transparent = false, -- Show/hide background
   colors = {}, -- Override default colors
   highlights = {}, -- Override highlight groups
},
```

## Contributing

Contributions are welcome!  
Bug reports and feature suggestions can also be submitted via [Issues](../../issues)

# gruvdark.nvim

Professional and balanced colorscheme

<table width="100%">
  <tr>
    <th>GruvDark</th>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://i.postimg.cc/W2bNMsFH/dark.png" />
    </td>
  </tr>
  <tr>
    <th>GruvDark-Light</th>
  </tr>
  <tr>
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

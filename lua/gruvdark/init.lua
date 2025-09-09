local M = {}

M.setup = function(opts)
   opts = opts or {}
   M.opts = opts
end

M.load = function(palette_name, opts)
   opts = opts or M.opts or {}

   vim.cmd("highlight clear")
   vim.g.colors_name = palette_name
   if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
   end

   local colors = require("gruvdark.colors").palettes[palette_name]

   -- Handle transparent option
   if opts.transparent then
      colors.bg0 = "NONE"
   end

   -- Override with user colors
   if opts.colors then
      for color_name, color_value in pairs(opts.colors) do
         colors[color_name] = color_value
      end
   end

   local highlights = require("gruvdark.highlights").setup(colors)

   -- Override with user highlights
   if opts.highlights then
      for group, hl in pairs(opts.highlights) do
         highlights[group] = hl
      end
   end

   -- Apply all highlights
   for group, hl in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, hl)
   end
end

return M

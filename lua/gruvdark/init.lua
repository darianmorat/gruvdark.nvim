local M = {}

M.setup = function(opts)
   opts = opts or {}
   -- Options here
   M.opts = opts
end

M.load = function(palette_name, opts)
   opts = opts or M.opts or {}
   vim.cmd("highlight clear")
   if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
   end
   local colors = require("gruvdark.colors").palettes[palette_name]

   -- Make transparent if requested
   if opts.transparent then
      colors.bg = "NONE"
      colors.bg1 = "NONE"
   end

   local highlights = require("gruvdark.highlights").setup(colors)
   for group, hl in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, hl)
   end
end

return M

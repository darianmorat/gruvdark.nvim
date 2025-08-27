local M = {}

M.load = function(palette_name)
   vim.cmd("highlight clear")
   if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
   end

   local colors = require("gruvdark.colors").palettes[palette_name]
   local highlights = require("gruvdark.highlights").setup(colors)

   for group, hl in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, hl)
   end
end

return M

local M = {}

M.setup = function(colors)
   return {
      -- Editor
      Normal = { bg = colors.bg, fg = colors.fg },
      NormalFloat = { bg = colors.bg, fg = colors.fg },
      MsgArea = { fg = colors.fg, bg = "#1E1E1E" },
      -- StatusLine = { fg = colors.fg, bg = "#252525" },

      Search = { fg = colors.bg, bg = "#B55353" },
      FlashCurrent = { fg = colors.bg, bg = "#B55353" },
      IncSearch = { fg = colors.fg_bright, bg = "#B55353" },
      FlashLabel = { fg = colors.fg_bright, bg = "#2A404F" },

      MatchParen = { fg = colors.fg_bright, bg = colors.menu },
      Folded = { fg = colors.fg, bg = "#282828" },
      Cursor = { fg = "#1E1E1E", bg = "#CDC5B8", bold = true },
      Cursor2 = { fg = "#1E1E1E", bg = "#BF5959" },
      LineNr = { fg = "#555555" },
      WinSeparator = { fg = "#2F2F2F" },

      -- CmpItemAbbrMatch = { fg = colors.green },
      -- CmpItemAbbrMatchFuzzy = { fg = colors.green, underline = true },
      -- CmpItemKindText = { fg = colors.light_grey },
      -- CmpItemMenu = { fg = colors.light_grey },
      -- PmenuSel = { fg = "#E1DCD6", bg = "#444444" },

      TSParameter = { fg = colors.fg },
      TSParameterReference = { fg = colors.fg },

      CursorLine = { bg = colors.cursor_line },
      CursorLineNr = { fg = colors.light_grey },
      Visual = { bg = colors.selection },
      ColorColumn = { bg = colors.column },
      IblIndent = { fg = colors.indent },
      YankHighlight = { fg = "#e6e3de", bg = "#2b2b2b" },

      -- Line numbers
      LineNr = { fg = colors.grey },
      CursorLineNr = { fg = colors.light_grey },
      SignColumn = { bg = colors.bg },

      -- Syntax
      Comment = { fg = colors.grey },
      String = { fg = colors.green },
      Number = { fg = colors.orange },
      Boolean = { fg = colors.orange },
      Identifier = { fg = colors.aqua },
      Delimiter = { fg = colors.fg },
      Operator = { fg = colors.blue },
      ["@punctuation.delimiter"] = { fg = colors.light_grey },

      Function = { fg = colors.red },
      ["@constructor"] = { fg = colors.aqua },

      ["@variable"] = { fg = colors.fg },
      ["@variable.builtin"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary"] = { fg = colors.orange },
      ["@lsp.type.class"] = { fg = colors.aqua },
      ["@lsp.type.namespace"] = { fg = colors.aqua },

      Type = { fg = colors.fg },
      ["@type.builtin"] = { fg = colors.orange },

      ["@constant"] = { fg = colors.orange },
      ["@constant.builtin"] = { fg = colors.orange },

      Keyword = { fg = colors.blue },
      ["@keyword.import"] = { fg = colors.pink },
      ["@keyword.return"] = { fg = colors.pink },
      ["@keyword.conditional"] = { fg = colors.pink },
      ["@keyword.exception"] = { fg = colors.pink },
      ["@keyword.repeat"] = { fg = colors.pink },
      ["@keyword.operator"] = { fg = colors.pink },

      ["@property.json"] = { fg = colors.red },

      Title = { fg = colors.orange, bold = false },
      Statement = { fg = colors.grey },
      markdownLinkText = { fg = colors.blue, underline = false },
      ["@markup.link.markdown_inline"] = { fg = colors.fg, underline = false },
      ["@markup.link.label.markdown_inline"] = { fg = colors.blue, underline = false },
      ["@markup.link.url.markdown_inline"] = { fg = colors.aqua, underline = true },
      ["@markup.raw.block.markdown"] = { fg = colors.green },
      ["@markup.heading.html"] = { fg = colors.orange },

      -- ["@markup.heading.1.markdown"] = { fg = colors.red },
      ["@markup.heading.2.markdown"] = { fg = colors.red },
      -- ["@markup.heading.3.markdown"] = { fg = colors.red },
      ["@markup.heading.4.markdown"] = { fg = colors.red },
      -- ["@markup.heading.5.markdown"] = { fg = colors.red },
      ["@markup.heading.6.markdown"] = { fg = colors.red },

      Special = { fg = colors.red },
      ["@tag.attribute"] = { fg = colors.purple },
      ["@tag.tsx"] = { fg = colors.aqua },

      -- CSS
      ["@constant.css"] = { fg = colors.red },
      ["@type.css"] = { fg = colors.red },
      ["@attribute.css"] = { fg = colors.red },
      ["@property.css"] = { fg = colors.blue },
      ["@keyword.css"] = { fg = colors.red },
      ["@keyword.directive.css"] = { fg = colors.pink },
      ["@keyword.modifier.css"] = { fg = colors.pink },
      ["@string.css"] = { fg = colors.green },
      ["@punctuation.delimiter.css"] = { fg = colors.light_grey },

      -- Diagnostics
      DiagnosticError = { fg = colors.red },
      DiagnosticWarn = { fg = colors.orange },
      DiagnosticInfo = { fg = colors.blue },
      DiagnosticHint = { fg = colors.pink },
   }
end

return M

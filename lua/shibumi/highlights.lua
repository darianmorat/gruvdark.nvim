local M = {}
local util = require("shibumi.util")

M.setup = function(colors)
   local highlights = {

      -- TITLE: Editor Interface ------------------------------------------------------------------

      Normal = { fg = colors.fg, bg = colors.bg0 },
      NormalNC = { fg = colors.fg, bg = colors.bg0 },
      NormalFloat = { fg = colors.fg, bg = colors.bg0 },
      MsgArea = { fg = colors.fg, bg = colors.bg0 },
      Terminal = { fg = colors.fg, bg = colors.bg0 },

      Cursor = { fg = colors.bg0, bg = colors.fg },
      Cursor2 = { fg = colors.bg0, bg = colors.red },
      CursorLine = { bg = colors.none },
      CursorColumn = { bg = colors.bg1 },
      Visual = { bg = colors.bg3 },
      VisualNOS = { fg = colors.none, bg = colors.bg6, underline = true },

      LineNr = { fg = colors.line_nr },
      CursorLineNr = { fg = colors.cursor_nr },
      SignColumn = { bg = colors.bg0 },
      ColorColumn = { bg = colors.bg1 },
      EndOfBuffer = { fg = colors.bg5 },

      WinSeparator = { fg = colors.bg5 },
      Folded = { fg = colors.fg, bg = colors.bg5 },
      FoldColumn = { fg = colors.grey, bg = colors.bg0 },

      MatchParen = { fg = colors.fg_light, bg = colors.bg5 },
      YankHighlight = { fg = colors.fg_light, bg = colors.bg6 },

      QuickFixLine = { fg = colors.blue, underline = true },
      FloatBorder = { fg = colors.fg, bg = colors.bg0 },
      Conceal = { fg = colors.grey, bg = colors.bg5 },

      Pmenu = { fg = colors.none, bg = colors.bg5 },
      PmenuSel = { fg = colors.none, bg = colors.bg7 },
      PmenuSbar = { fg = colors.none, bg = colors.bg7 },
      PmenuThumb = { fg = colors.none, bg = colors.grey },

      StatusLine = { fg = colors.fg, bg = colors.bg2 },
      StatusLineNC = { fg = colors.grey, bg = colors.bg2 },

      Search = {
         fg = colors.bg0,
         bg = util.darken(colors.orange, 0.8, colors.bg0),
      },
      CurSearch = {
         fg = colors.bg0,
         bg = util.darken(colors.orange, 0.8, colors.bg0),
      },
      Substitute = {
         fg = colors.fg_light,
         bg = util.darken(colors.orange, 0.2, colors.bg0),
      },

      TabLine = { fg = colors.fg, bg = colors.bg2 },
      TabLineFill = { fg = colors.fg, bg = colors.bg2 },
      TabLineSel = { fg = colors.fg, bg = colors.grey },

      SpellBad = { sp = colors.red, undercurl = true },
      SpellCap = { sp = colors.orange, undercurl = true },
      SpellLocal = { sp = colors.blue, undercurl = true },
      SpellRare = { sp = colors.pink, undercurl = true },

      -- TITLE: Core Syntax -----------------------------------------------------------------------

      Comment = { fg = colors.grey },
      String = { fg = colors.green },
      Character = { fg = colors.green },
      Constant = { fg = colors.aqua },
      Number = { fg = colors.orange },
      Float = { fg = colors.orange },
      Boolean = { fg = colors.orange },
      Identifier = { fg = colors.aqua },
      Function = { fg = colors.red },
      Statement = { fg = colors.grey },
      Keyword = { fg = colors.blue },
      Operator = { fg = colors.blue },
      Type = { fg = colors.orange },
      Special = { fg = colors.red },
      Delimiter = { fg = colors.fg },
      Title = { fg = colors.orange },
      PreProc = { fg = colors.pink },

      Structure = { fg = colors.orange },
      StorageClass = { fg = colors.orange },
      PreCondit = { fg = colors.pink },
      Include = { fg = colors.pink },
      Define = { fg = colors.pink },
      Typedef = { fg = colors.orange },
      Exception = { fg = colors.pink },
      Conditional = { fg = colors.pink },
      Repeat = { fg = colors.pink },
      Macro = { fg = colors.pink },
      Error = { fg = colors.pink },
      Label = { fg = colors.pink },
      SpecialChar = { fg = colors.red },
      SpecialComment = { fg = colors.grey },
      Todo = { fg = colors.red },
      Tag = { fg = colors.green },

      WarningMsg = { fg = colors.orange },
      ErrorMsg = { fg = colors.red },
      InfoMsg = { fg = colors.blue },
      HintMsg = { fg = colors.pink },
      ModeMsg = { fg = colors.fg },
      MoreMsg = { fg = colors.green },
      Question = { fg = colors.orange },

      Directory = { fg = colors.blue },
      SpecialKey = { fg = colors.grey },
      NonText = { fg = colors.grey },
      Whitespace = { fg = colors.grey },

      FileChangedSign = { fg = colors.orange },
      FileModifiedSign = { fg = colors.red },

      -- TITLE: Treesitter Captures ---------------------------------------------------------------

      ["@variable"] = { fg = colors.fg },
      ["@variable.builtin"] = { fg = colors.orange },
      ["@parameter"] = { fg = colors.fg },
      ["@parameter.reference"] = { fg = colors.fg },

      ["@function"] = { fg = colors.red },
      ["@function.builtin"] = { fg = colors.red },
      ["@constructor"] = { fg = colors.aqua },
      ["@function.macro"] = { fg = colors.aqua },

      ["@type"] = { fg = colors.orange },
      ["@type.builtin"] = { fg = colors.orange },
      ["@constant"] = { fg = colors.orange },
      ["@constant.builtin"] = { fg = colors.orange },

      ["@keyword"] = { fg = colors.blue },
      ["@keyword.import"] = { fg = colors.pink },
      ["@keyword.return"] = { fg = colors.pink },
      ["@keyword.conditional"] = { fg = colors.pink },
      ["@keyword.exception"] = { fg = colors.pink },
      ["@keyword.repeat"] = { fg = colors.pink },
      ["@keyword.operator"] = { fg = colors.pink },

      ["@punctuation.bracket"] = { fg = colors.fg },
      ["@punctuation.delimiter"] = { fg = colors.punc_char },

      ["@lsp.type.class"] = { fg = colors.aqua },
      ["@lsp.type.namespace"] = { fg = colors.aqua },
      ["@lsp.typemod.variable.defaultLibrary"] = { fg = colors.orange },
      ["@string.special.symbol"] = { fg = colors.aqua },

      ["@tag"] = { fg = colors.red },
      ["@tag.attribute"] = { fg = colors.purple },
      ["@tag.delimiter"] = { fg = colors.red },
      ["@tag.tsx"] = { fg = colors.aqua },

      ["@constant.css"] = { fg = colors.red },
      ["@type.css"] = { fg = colors.red },
      ["@attribute.css"] = { fg = colors.red },
      ["@keyword.css"] = { fg = colors.red },
      ["@property.css"] = { fg = colors.blue },
      ["@keyword.directive.css"] = { fg = colors.pink },
      ["@keyword.modifier.css"] = { fg = colors.pink },

      ["@property.json"] = { fg = colors.red },

      ["@tag.javascript"] = { fg = colors.aqua },
      ["@type.javascript"] = { fg = colors.fg },
      ["@constant.javascript"] = { fg = colors.fg },
      ["@lsp.type.class.javascript"] = { fg = colors.aqua },

      ["@type.tsx"] = { fg = colors.fg },
      ["@type.typescript"] = { fg = colors.fg },
      ["@constant.typescript"] = { fg = colors.fg },
      ["@keyword.directive.typescript"] = { fg = colors.green },

      ["@lsp.typemod.function.defaultLibrary"] = { fg = colors.red },

      ["@lsp.typemod.property.declaration.javascript"] = { fg = colors.fg },
      ["@lsp.typemod.property.defaultLibrary.javascript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.javascript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.javascriptreact"] = { fg = colors.orange },

      ["@lsp.typemod.property.declaration.typescript"] = { fg = colors.fg },
      ["@lsp.typemod.property.defaultLibrary.typescript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.typescript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.typescriptreact"] = { fg = colors.orange },

      ["@punctuation.special.astro"] = { fg = colors.orange },
      ["@type.astro"] = { fg = colors.aqua },

      ["@constructor.lua"] = { fg = colors.fg },
      ["@module.builtin.lua"] = { fg = colors.aqua },
      ["@property.lua"] = { fg = colors.fg },
      ["@keyword.luadoc"] = { fg = colors.pink },

      ["@type.java"] = { fg = colors.aqua },
      ["@keyword.type.java"] = { fg = colors.orange },

      ["@markup.heading.1.markdown"] = { fg = colors.red },
      ["@markup.heading.2.markdown"] = { fg = colors.red },
      ["@markup.heading.3.markdown"] = { fg = colors.red },
      ["@markup.heading.4.markdown"] = { fg = colors.red },
      ["@markup.heading.5.markdown"] = { fg = colors.red },
      ["@markup.heading.6.markdown"] = { fg = colors.red },

      ["@markup.heading.html"] = { fg = colors.orange },
      ["@markup.raw.block.markdown"] = { fg = colors.green },
      ["@markup.link.markdown_inline"] = { fg = colors.fg },
      ["@markup.link.label.markdown_inline"] = { fg = colors.blue },

      ["@markup.raw.markdown_inline"] = { fg = colors.orange },
      ["@markup.quote.markdown"] = { fg = colors.fg },
      ["@punctuation.special.markdown"] = { fg = colors.punc_char },
      ["@label.markdown"] = { fg = colors.grey },

      -- TITLE: LSP & Diagnostics -----------------------------------------------------------------

      LspReferenceText = { bg = colors.bg6 },
      LspReferenceRead = { bg = colors.bg6 },
      LspReferenceWrite = { bg = colors.bg6 },

      DiagnosticError = { fg = colors.red },
      DiagnosticWarn = { fg = colors.orange },
      DiagnosticInfo = { fg = colors.aqua },
      DiagnosticHint = { fg = colors.pink },
      DiagnosticOk = { fg = colors.green },

      DiagnosticVirtualTextError = {
         bg = util.darken(colors.red, 0.1, colors.bg0),
         fg = colors.red,
      },
      DiagnosticVirtualTextWarn = {
         bg = util.darken(colors.orange, 0.1, colors.bg0),
         fg = colors.orange,
      },
      DiagnosticVirtualTextInfo = {
         bg = util.darken(colors.aqua, 0.1, colors.bg0),
         fg = colors.aqua,
      },
      DiagnosticVirtualTextHint = {
         bg = util.darken(colors.pink, 0.1, colors.bg0),
         fg = colors.pink,
      },

      DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
      DiagnosticUnderlineWarn = { sp = colors.orange, undercurl = true },
      DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
      DiagnosticUnderlineHint = { sp = colors.pink, undercurl = true },

      DiagnosticSignError = { fg = colors.red, bg = colors.bg0 },
      DiagnosticSignWarn = { fg = colors.orange, bg = colors.bg0 },
      DiagnosticSignInfo = { fg = colors.blue, bg = colors.bg0 },
      DiagnosticSignHint = { fg = colors.pink, bg = colors.bg0 },

      Added = { fg = colors.green },
      Removed = { fg = colors.red },
      Changed = { fg = colors.blue },

      DiffAdd = { fg = colors.none, bg = colors.diff_add },
      DiffDelete = { fg = colors.grey, bg = colors.none },
      DiffChange = { fg = colors.none, bg = colors.diff_change },
      DiffText = { fg = colors.fg_light, bg = colors.diff_text },

      -- TITLE: Plugins Modules -------------------------------------------------------------------

      -- Lazy.nvim
      LazyProp = { fg = colors.grey },
      LazyDir = { fg = colors.blue },
      LazyCommitType = { fg = colors.pink },
      LazyCommitScope = { fg = colors.pink },
      LazyReasonRuntime = { fg = colors.blue },
      LazyReasonCmd = { fg = colors.orange },
      LazyReasonImport = { fg = colors.pink },
      LazyReasonKeys = { fg = colors.pink },
      LazyReasonStart = { fg = colors.orange },
      LazyUrl = { fg = colors.aqua, underline = true },

      -- GitSigns
      GitSignsAdd = { fg = colors.green },
      GitSignsAddLn = { fg = colors.green },
      GitSignsAddNr = { fg = colors.green },
      GitSignsChange = { fg = colors.blue },
      GitSignsChangeLn = { fg = colors.blue },
      GitSignsChangeNr = { fg = colors.blue },
      GitSignsDelete = { fg = colors.red },
      GitSignsDeleteLn = { fg = colors.red },
      GitSignsDeleteNr = { fg = colors.red },
      GitSignsAddInline = { fg = colors.bg0, bg = colors.green },
      GitSignsDeleteInline = { fg = colors.bg0, bg = colors.red },
      GitSignsChangeInline = { fg = colors.bg0, bg = colors.green },
      GitSignsAddPreview = { fg = colors.green, bg = colors.diff_add },
      GitSignsDeletePreview = { fg = colors.red, bg = colors.diff_delete },
      GitSignsDeleteVirtLn = { fg = colors.red, bg = colors.diff_delete },

      -- FZF-lua
      FzfLuaBufFlagCur = { fg = colors.orange },
      FzfLuaHeaderText = { fg = colors.orange },
      FzfLuaLiveSym = { fg = colors.fg },
      FzfLuaLivePrompt = { fg = colors.fg },
      FzfLuaPathLineNr = { fg = colors.green },
      FzfLuaPathColNr = { fg = colors.red },
      FzfLuaBufNr = { fg = colors.fg },
      FzfLuaHeaderBind = { fg = colors.fg },
      FzfLuaBufFlagAlt = { fg = colors.blue },

      -- Blink-cmp
      BlinkCmpMenu = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpMenuBorder = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpDoc = { fg = colors.fg, bg = colors.bg4 },
      BlinkCmpDocBorder = { fg = colors.fg, bg = colors.bg4 },
      BlinkCmpDocSeparator = { fg = colors.fg, bg = colors.bg4 },
      BlinkCmpScrollBarThumb = { bg = colors.grey },
      BlinkCmpScrollBarGutter = { bg = colors.bg6 },
      BlinkCmpLabelMatch = { fg = colors.green },

      -- Indent Blankline
      IblIndent = { fg = colors.bg4 },

      -- Mini
      MiniPickBorder = { fg = colors.fg, bg = colors.bg0 },
      MiniPickBorderBusy = { fg = colors.red, bg = colors.bg0 },
      MiniPickBorderText = { fg = colors.fg, bg = colors.bg0 },
      MiniPickCursor = { fg = colors.fg, bg = colors.bg0 },
      MiniPickIconDirectory = { bg = colors.bg0 },
      MiniPickIconFile = { bg = colors.bg3 },
      MiniPickHeader = { bg = colors.bg3 },
      MiniPickMatchCurrent = { bg = colors.bg3 },
      MiniPickMatchMarked = { fg = colors.red, bg = colors.bg0 },
      MiniPickMatchRanges = { fg = colors.green, bg = colors.bg0 },
      MiniPickNormal = { bg = colors.bg0 },
      MiniPickPreviewLine = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPreviewRegion = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPrompt = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPromptCaret = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPromptPrefix = { fg = colors.fg, bg = colors.bg0 },
   }

   local lsp_kind_icons_color = {
      Default = { fg = colors.pink },
      Array = { fg = colors.orange },
      Boolean = { fg = colors.orange },
      Class = { fg = colors.aqua },
      Color = { fg = colors.green },
      Constant = { fg = colors.orange },
      Constructor = { fg = colors.blue },
      Enum = { fg = colors.pink },
      EnumMember = { fg = colors.orange },
      Event = { fg = colors.orange },
      Field = { fg = colors.pink },
      File = { fg = colors.blue },
      Folder = { fg = colors.orange },
      Function = { fg = colors.red },
      Interface = { fg = colors.green },
      Key = { fg = colors.aqua },
      Keyword = { fg = colors.blue },
      Method = { fg = colors.red },
      Module = { fg = colors.orange },
      Namespace = { fg = colors.aqua },
      Null = { fg = colors.grey },
      Number = { fg = colors.orange },
      Object = { fg = colors.aqua },
      Operator = { fg = colors.blue },
      Package = { fg = colors.orange },
      Property = { fg = colors.purple },
      Reference = { fg = colors.orange },
      Snippet = { fg = colors.green },
      String = { fg = colors.green },
      Struct = { fg = colors.pink },
      Text = { fg = colors.fg },
      TypeParameter = { fg = colors.red },
      Unit = { fg = colors.green },
      Value = { fg = colors.orange },
      Variable = { fg = colors.fg },
   }

   for kind, color in pairs(lsp_kind_icons_color) do
      highlights["CmpItemKind" .. kind] = { fg = color.fg }
      highlights["BlinkCmpKind" .. kind] = { fg = color.fg }
   end

   return highlights
end

return M

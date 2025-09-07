local M = {}
local util = require("gruvdark.util")

local function color_shortcuts(colors)
   return {
      -- Base
      fg = { fg = colors.fg },
      fg_light = { fg = colors.fg_light },
      blue = { fg = colors.blue },
      blue_dark = { fg = colors.blue_dark },
      red = { fg = colors.red },
      red_dark = { fg = colors.red_dark },
      green = { fg = colors.green },
      pink = { fg = colors.pink },
      purple = { fg = colors.purple },
      aqua = { fg = colors.aqua },
      orange = { fg = colors.orange },
      grey = { fg = colors.grey },
      grey_light = { fg = colors.grey_light },

      -- Background
      bg0 = { bg = colors.bg0 },
      bg1 = { bg = colors.bg1 },
      bg2 = { bg = colors.bg2 },
      bg3 = { bg = colors.bg3 },
      bg4 = { bg = colors.bg4 },
      bg5 = { bg = colors.bg5 },
      bg6 = { bg = colors.bg6 },
      bg7 = { bg = colors.bg7 },

      -- Extras
      line_nr = { fg = colors.line_nr },
      cursor_nr = { fg = colors.cursor_line },
   }
end

local function common_highlights(colors)
   return {
      normal = { fg = colors.fg, bg = colors.bg0 },
      cursor_line = { bg = colors.none },
      visual = { bg = colors.bg3 },
      vert_split = { fg = colors.bg5 },
      sign_column = { bg = colors.bg0 },
      status_line = { fg = colors.fg, bg = colors.bg2 },
      status_line_nc = { fg = colors.grey, bg = colors.bg2 },
      end_of_buffer = { fg = colors.bg5 },
      selection = { bg = colors.bg3 },
      search = { fg = colors.bg0, bg = colors.red_dark },
   }
end

M.setup = function(colors)
   local common = common_highlights(colors)
   local c = color_shortcuts(colors)

   local lsp_kind_icons_color = {
      Default = c.pink,
      Array = c.orange,
      Boolean = c.orange,
      Class = c.aqua,
      Color = c.green,
      Constant = c.orange,
      Constructor = c.blue,
      Enum = c.pink,
      EnumMember = c.orange,
      Event = c.orange,
      Field = c.pink,
      File = c.blue,
      Folder = c.orange,
      Function = c.red,
      Interface = c.green,
      Key = c.aqua,
      Keyword = c.blue,
      Method = c.red,
      Module = c.orange,
      Namespace = c.aqua,
      Null = c.grey,
      Number = c.orange,
      Object = c.aqua,
      Operator = c.blue,
      Package = c.orange,
      Property = c.purple,
      Reference = c.orange,
      Snippet = c.green,
      String = c.green,
      Struct = c.pink,
      Text = c.fg,
      TypeParameter = c.red,
      Unit = c.green,
      Value = c.orange,
      Variable = c.fg,
   }

   local highlights = {
      -- ================================================================================
      -- BASE GROUPS
      -- ================================================================================
      Normal = common.normal,
      NormalNC = common.normal,
      NormalFloat = common.normal,
      MsgArea = common.normal,
      Terminal = common.normal,

      -- Cursor & selection
      Cursor = { fg = colors.bg0, bg = colors.fg },
      Cursor2 = { fg = colors.bg0, bg = colors.red },
      CursorLine = common.cursor_line,
      CursorColumn = c.bg1,
      Visual = common.visual,
      VisualNOS = { fg = colors.none, bg = colors.bg6, underline = true },

      -- Line numbers & columns
      LineNr = c.line_nr,
      CursorLineNr = c.cursor_nr,
      SignColumn = common.sign_column,
      ColorColumn = c.bg1,
      EndOfBuffer = common.end_of_buffer,

      -- Window elements
      WinSeparator = common.vert_split,
      Folded = { fg = colors.fg, bg = colors.bg5 },
      FoldColumn = { fg = colors.grey, bg = colors.bg0 },

      -- Search & matching
      Search = common.search,
      IncSearch = { fg = colors.fg_light, bg = colors.red_dark },
      Substitute = common.search,
      MatchParen = { fg = colors.fg_light, bg = colors.bg5 },

      -- Yank highlighting
      YankHighlight = { fg = colors.fg_light, bg = colors.bg6 },

      -- Extras
      QuickFixLine = { fg = colors.blue, underline = true },
      FloatBorder = { fg = colors.fg, bg = colors.bg0 },
      Conceal = { fg = colors.grey, bg = colors.bg5 },

      -- Completion menus
      Pmenu = { fg = colors.none, bg = colors.bg5 },
      PmenuSel = { fg = colors.none, bg = colors.bg7 },
      PmenuSbar = { fg = colors.none, bg = colors.bg7 },
      PmenuThumb = { fg = colors.none, bg = colors.grey },

      -- Statusline & tabline
      StatusLine = common.status_line,
      StatusLineNC = common.status_line_nc,

      TabLine = common.status_line,
      TabLineFill = common.status_line,
      TabLineSel = { fg = colors.fg, bg = colors.grey },

      -- Mini
      MiniPickBorder                                           = { fg = colors.fg, bg = colors.bg0 },
      MiniPickBorderBusy                                       = { fg = colors.red, bg = colors.bg0 },
      MiniPickBorderText                                       = { fg = colors.fg, bg = colors.bg0 },
      MiniPickCursor                                           = { fg = colors.fg, bg = colors.bg0 },
      MiniPickIconDirectory                                    = { bg = colors.bg0 },
      MiniPickIconFile                                         = { bg = colors.bg3 },
      MiniPickHeader                                           = { bg = colors.bg3 },
      MiniPickMatchCurrent                                     = { bg = colors.bg3 },
      MiniPickMatchMarked                                      = { fg = colors.red, bg = colors.bg0 },
      MiniPickMatchRanges                                      = { fg = colors.green, bg = colors.bg0 },
      MiniPickNormal                                           = { bg = colors.bg0 },
      MiniPickPreviewLine                                      = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPreviewRegion                                    = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPrompt                                           = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPromptCaret                                      = { fg = colors.fg, bg = colors.bg0 },
      MiniPickPromptPrefix                                     = { fg = colors.fg, bg = colors.bg0 },

      -- ================================================================================
      -- SYNTAX HIGHLIGHTING
      -- ================================================================================
      Comment = c.grey,
      String = c.green,
      Character = c.green,
      Constant = c.aqua,
      Number = c.orange,
      Float = c.orange,
      Boolean = c.orange,
      Identifier = c.aqua,
      Function = c.red,
      Statement = c.grey,
      Keyword = c.blue,
      Operator = c.blue,
      Type = c.orange,
      Special = c.red,
      Delimiter = c.fg,
      Title = c.orange,
      PreProc = c.pink,

      Structure = c.orange,
      StorageClass = c.orange,
      PreCondit = c.pink,
      Include = c.pink,
      Define = c.pink,
      Typedef = c.orange,
      Exception = c.pink,
      Conditional = c.pink,
      Repeat = c.pink,
      Macro = c.pink,
      Error = c.pink,
      Label = c.pink,
      SpecialChar = c.red,
      SpecialComment = c.grey,
      Todo = c.red,
      Tag = c.green,

      -- Standard Vim message highlights
      WarningMsg = c.orange,
      ErrorMsg = c.red,
      InfoMsg = c.blue,
      HintMsg = c.pink,
      ModeMsg = c.fg,
      MoreMsg = c.green,
      Question = c.orange,

      -- Additional useful message highlights
      Directory = c.blue,
      SpecialKey = c.grey,
      NonText = c.grey,
      Whitespace = c.grey,

      -- Custom highlight groups
      FileChangedSign = c.orange,
      FileModifiedSign = c.red,

      -- ================================================================================
      -- TREESITTER
      -- ================================================================================
      -- variables & parameters
      ["@variable"] = c.fg,
      ["@variable.builtin"] = c.orange,
      ["@parameter"] = c.fg,
      ["@parameter.reference"] = c.fg,

      -- functions & constructors
      ["@function"] = c.red,
      ["@function.builtin"] = c.red,
      ["@constructor"] = c.aqua,
      ["@function.macro"] = c.aqua,

      -- types & constants
      ["@type"] = c.orange,
      ["@type.builtin"] = c.orange,
      ["@constant"] = c.orange,
      ["@constant.builtin"] = c.orange,

      -- keywords
      ["@keyword"] = c.blue,
      ["@keyword.import"] = c.pink,
      ["@keyword.return"] = c.pink,
      ["@keyword.conditional"] = c.pink,
      ["@keyword.exception"] = c.pink,
      ["@keyword.repeat"] = c.pink,
      ["@keyword.operator"] = c.pink,

      -- punctuation
      ["@punctuation.bracket"] = c.fg,
      ["@punctuation.delimiter"] = c.grey_light,
      ["@punctuation.special"] = c.grey_light,

      -- LSP semantic tokens
      ["@lsp.type.class"] = c.aqua,
      ["@lsp.type.namespace"] = c.aqua,
      ["@lsp.typemod.variable.defaultLibrary"] = c.orange,
      ["@string.special.symbol"] = c.aqua,

      -- HTML/XML tags
      ["@tag"] = c.red,
      ["@tag.attribute"] = c.purple,
      ["@tag.delimiter"] = c.red,
      ["@tag.tsx"] = c.aqua,

      -- CSS specific
      ["@constant.css"] = c.red,
      ["@type.css"] = c.red,
      ["@attribute.css"] = c.red,
      ["@keyword.css"] = c.red,
      ["@property.css"] = c.blue,
      ["@keyword.directive.css"] = c.pink,
      ["@keyword.modifier.css"] = c.pink,

      -- JSON specific
      ["@property.json"] = c.red,

      -- JavasCript/TypesCript specific
      ["@tag.javascript"] = c.aqua,
      ["@type.javascript"] = c.fg,
      ["@constant.javascript"] = c.fg,
      ["@lsp.type.class.javascript"] = c.aqua,

      ["@type.tsx"] = c.fg,
      ["@type.typescript"] = c.fg,
      ["@constant.typescript"] = c.fg,
      ["@keyword.directive.typescript"] = c.green,

      ["@lsp.typemod.function.defaultLibrary"] = c.red,

      ["@lsp.typemod.property.declaration.javascript"] = c.fg,
      ["@lsp.typemod.property.defaultLibrary.javascript"] = c.orange,
      ["@lsp.typemod.variable.defaultLibrary.javascript"] = c.orange,
      ["@lsp.typemod.variable.defaultLibrary.javascriptreact"] = c.orange,

      ["@lsp.typemod.property.declaration.typescript"] = c.fg,
      ["@lsp.typemod.property.defaultLibrary.typescript"] = c.orange,
      ["@lsp.typemod.variable.defaultLibrary.typescript"] = c.orange,
      ["@lsp.typemod.variable.defaultLibrary.typescriptreact"] = c.orange,

      -- Lua specific
      ["@constructor.lua"] = c.fg,
      ["@module.builtin.lua"] = c.aqua,
      ["@property.lua"] = c.fg,
      ["@keyword.luadoc"] = c.pink,

      -- Java specific
      ["@type.java"] = c.aqua,
      ["@keyword.type.java"] = c.orange,

      -- Markdown
      ["@markup.heading.1.markdown"] = c.red,
      ["@markup.heading.2.markdown"] = c.red,
      ["@markup.heading.3.markdown"] = c.red,
      ["@markup.heading.4.markdown"] = c.red,
      ["@markup.heading.5.markdown"] = c.red,
      ["@markup.heading.6.markdown"] = c.red,

      ["@markup.heading.html"] = c.orange,
      ["@markup.raw.block.markdown"] = c.green,
      ["@markup.link.markdown_inline"] = c.fg,
      ["@markup.link.label.markdown_inline"] = c.blue,
      ["@markup.link.url.markdown_inline"] = { fg = colors.aqua, underline = true },
      ["@label.markdown"] = c.grey,

      -- More specific diff treesitter nodes
      ["@diff.plus"] = c.green,
      ["@diff.minus"] = c.red,
      ["@diff.delta"] = c.blue,

      -- Markup treesitter nodes
      ["@markup.emphasis"] = { fg = colors.fg, italic = true },
      ["@markup.strong"] = { fg = colors.fg, bold = true },
      ["@markup.underline"] = { fg = colors.fg, underline = true },
      ["@markup.strike"] = { fg = colors.fg, strikethrough = true },
      ["@markup.math"] = c.fg,
      ["@markup.environment"] = c.fg,
      ["@markup.environment.name"] = c.fg,
      ["@markup.list"] = c.red,

      -- Others
      markdownLinkText = c.blue,
      ["@punctuation.special"] = c.red,

      -- ================================================================================
      -- TreeSitter Context
      -- ================================================================================
      TreesitterContext = c.bg3,
      TreesitterContextLineNumber = { fg = colors.grey_light, bg = colors.bg3 },
      TreesitterContextSeparator = c.bg5,

      -- ================================================================================
      -- LSP Context
      -- ================================================================================
      LspCxxHlGroupEnumConstant = c.orange,
      LspCxxHlGroupMemberVariable = c.orange,
      LspCxxHlGroupNamespace = c.blue,
      LspCxxHlSkippedRegion = c.grey,
      LspCxxHlSkippedRegionBeginEnd = c.red,

      LspReferenceText = c.bg6,
      LspReferenceWrite = c.bg6,
      LspReferenceRead = c.bg6,

      LspCodeLens = c.grey,
      LspCodeLensSeparator = c.grey,

      -- Diagnostics
      DiagnosticError = c.red,
      DiagnosticWarn = c.orange,
      DiagnosticInfo = c.aqua,
      DiagnosticHint = c.pink,
      DiagnosticOk = c.green,

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

      -- Debug
      Debug = c.orange,
      debugPC = { fg = colors.bg0, bg = colors.green },
      debugBreakpoint = { fg = colors.bg0, bg = colors.red },

      -- ================================================================================
      -- Diffview
      -- ================================================================================
      DiffviewFilePanelTitle = c.blue,
      DiffviewFilePanelCounter = c.pink,
      DiffviewFilePanelFileName = c.fg,
      DiffviewNormal = common.normal,
      DiffviewCursorLine = common.cursor_line,
      DiffviewVertSplit = common.vert_split,
      DiffviewSignColumn = common.sign_column,
      DiffviewStatusLine = common.status_line,
      DiffviewStatusLineNC = common.status_line_nc,
      DiffviewEndOfBuffer = common.end_of_buffer,
      DiffviewFilePanelRootPath = c.grey,
      DiffviewFilePanelPath = c.grey,
      DiffviewFilePanelInsertions = c.green,
      DiffviewFilePanelDeletions = c.red,
      DiffviewStatusAdded = c.green,
      DiffviewStatusUntracked = c.blue,
      DiffviewStatusModified = c.blue,
      DiffviewStatusRenamed = c.blue,
      DiffviewStatusCopied = c.blue,
      DiffviewStatusTypeChange = c.blue,
      DiffviewStatusUnmerged = c.blue,
      DiffviewStatusUnknown = c.red,
      DiffviewStatusDeleted = c.red,
      DiffviewStatusBroken = c.red,

      Added = c.green,
      Removed = c.red,
      Changed = c.blue,
      DiffAdded = c.green,
      DiffChanged = c.blue,
      DiffRemoved = c.red,
      DiffDeleted = c.red,
      DiffFile = c.aqua,
      DiffIndexLine = c.grey,

      DiffAdd = { fg = colors.none, bg = colors.diff_add },
      DiffDelete = { fg = colors.none, bg = colors.diff_delete },
      DiffChange = { fg = colors.none, bg = colors.diff_change },
      DiffText = { fg = colors.none, bg = colors.diff_text },

      -- ================================================================================
      -- Spell checking
      -- ================================================================================
      SpellBad = { fg = colors.none, sp = colors.red, undercurl = true },
      SpellCap = { fg = colors.none, sp = colors.orange, undercurl = true },
      SpellLocal = { fg = colors.none, sp = colors.blue, undercurl = true },
      SpellRare = { fg = colors.none, sp = colors.pink, undercurl = true },

      -- ================================================================================
      -- Lazy.nvim
      -- ================================================================================
      LazyProp = c.grey,
      LazyDir = c.blue,
      LazyCommitType = c.pink,
      LazyCommitScope = c.pink,
      LazyReasonRuntime = c.blue,
      LazyReasonCmd = c.orange,
      LazyReasonImport = c.pink,
      LazyReasonKeys = c.pink,
      LazyReasonStart = c.orange,
      LazyUrl = { fg = colors.aqua, underline = true },

      -- ================================================================================
      -- Conform
      -- ================================================================================
      ConformInfo = c.blue,
      ConformError = c.red,
      ConformWarn = c.orange,

      -- ================================================================================
      -- GitSigns
      -- ================================================================================
      GitSignsAdd = c.green,
      GitSignsAddLn = c.green,
      GitSignsAddNr = c.green,
      GitSignsChange = c.blue,
      GitSignsChangeLn = c.blue,
      GitSignsChangeNr = c.blue,
      GitSignsDelete = c.red,
      GitSignsDeleteLn = c.red,
      GitSignsDeleteNr = c.red,

      -- ================================================================================
      -- FZF-lua
      -- ================================================================================
      FzfLuaBufFlagCur = c.orange,
      FzfLuaHeaderText = c.orange,
      FzfLuaLiveSym = c.fg,
      FzfLuaLivePrompt = c.fg,

      FzfLuaPathLineNr = c.green,
      FzfLuaPathColNr = c.red,
      FzfLuaBufNr = c.fg,
      FzfLuaHeaderBind = c.fg,
      FzfLuaBufFlagAlt = c.blue,

      -- ================================================================================
      -- Blink-cmp
      -- ================================================================================
      BlinkCmpMenu = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpMenuBorder = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpDoc = { fg = colors.fg, bg = colors.bg4 },
      BlinkCmpDocBorder = { fg = colors.fg, bg = colors.bg4 },
      BlinkCmpDocSeparator = { fg = colors.fg, bg = colors.bg4 },
      BlinkCmpScrollBarThumb = { bg = colors.grey },
      BlinkCmpScrollBarGutter = { bg = colors.bg6 },
      BlinkCmpLabelMatch = { fg = colors.green },

      -- ================================================================================
      -- Flash.nvim
      -- ================================================================================
      FlashCurrent = { fg = colors.bg0, bg = colors.red_dark },
      FlashMatch = { fg = colors.bg0, bg = colors.red_dark },
      FlashLabel = { fg = colors.fg_light, bg = colors.blue_dark },

      -- ================================================================================
      -- Indent Blankline
      -- ================================================================================
      IblIndent = { fg = colors.bg4 },
      IndentBlanklineChar = { fg = colors.bg4 },
      IndentBlanklineContextChar = c.grey_light,
      IblScope = c.grey_light,

      -- ================================================================================
      -- Notifications
      -- ================================================================================
      NotifyERRORBorder = c.red,
      NotifyWARNBorder = c.orange,
      NotifyINFOBorder = c.blue,
      NotifyDEBUGBorder = c.grey,
      NotifyTRACEBorder = c.pink,
      NotifyERRORIcon = c.red,
      NotifyWARNIcon = c.orange,
      NotifyINFOIcon = c.blue,
      NotifyDEBUGIcon = c.grey,
      NotifyTRACEIcon = c.pink,
      NotifyERRORTitle = c.red,
      NotifyWARNTitle = c.orange,
      NotifyINFOTitle = c.blue,
      NotifyDEBUGTitle = c.grey,
      NotifyTRACETitle = c.pink,
   }

   for kind, color in pairs(lsp_kind_icons_color) do
      highlights["CmpItemKind" .. kind] = { fg = color.fg }
      highlights["BlinkCmpKind" .. kind] = { fg = color.fg }
   end

   return highlights
end

return M

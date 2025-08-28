local M = {}

M.setup = function(colors)
   return {
      -- Editor base
      Normal = { fg = colors.fg, bg = colors.bg },
      NormalFloat = { fg = colors.fg, bg = colors.bg },
      -- FloatBorder = { fg = colors.fg, bg = colors.bg },
      -- NormalNC = { fg = colors.fg, bg = colors.bg },
      MsgArea = { fg = colors.fg, bg = colors.bg },

      -- Cursor & selection
      Cursor = { fg = colors.bg, bg = colors.fg },
      Cursor2 = { fg = colors.bg, bg = colors.red },
      CursorLine = { bg = colors.cursor_line },
      CursorColumn = { bg = colors.column },
      Visual = { bg = colors.selection },
      -- VisualNOS = { bg = colors.selection },

      -- Line numbers & columns
      LineNr = { fg = colors.grey },
      CursorLineNr = { fg = colors.grey_light },
      SignColumn = { bg = colors.bg },
      ColorColumn = { bg = colors.column },
      EndOfBuffer = { fg = colors.bg3 },

      -- Window elements
      WinSeparator = { fg = colors.bg3 },
      Folded = { fg = colors.fg, bg = colors.bg2 },
      FoldColumn = { fg = colors.grey, bg = colors.bg },

      -- Search & matching
      Search = { fg = colors.bg, bg = colors.red_dark },
      IncSearch = { fg = colors.fg_light, bg = colors.red_dark },
      Substitute = { fg = colors.bg, bg = colors.red_dark },
      MatchParen = { fg = colors.fg_light, bg = colors.menu },

      -- Flash.nvim
      FlashCurrent = { fg = colors.bg, bg = colors.red_dark },
      FlashLabel = { fg = colors.fg_light, bg = colors.blue_dark },

      -- Indentation
      IblIndent = { fg = colors.indent },
      IblScope = { fg = colors.grey_light },

      -- Yank highlighting
      YankHighlight = { fg = colors.fg_light, bg = colors.bg2 },

      -- Syntax highlighting
      Comment = { fg = colors.grey },
      String = { fg = colors.green },
      Character = { fg = colors.green },
      Number = { fg = colors.orange },
      Float = { fg = colors.orange },
      Boolean = { fg = colors.orange },
      Identifier = { fg = colors.aqua },
      Function = { fg = colors.red },
      Statement = { fg = colors.grey },
      Keyword = { fg = colors.blue },
      Operator = { fg = colors.blue },
      Type = { fg = colors.fg },
      Special = { fg = colors.red },
      Delimiter = { fg = colors.fg },
      Title = { fg = colors.orange },

      -- Standard Vim message highlights
      WarningMsg = { fg = colors.orange },
      ErrorMsg = { fg = colors.red },
      InfoMsg = { fg = colors.blue },
      HintMsg = { fg = colors.pink },
      ModeMsg = { fg = colors.fg },
      MoreMsg = { fg = colors.green },
      Question = { fg = colors.blue },

      -- Additional useful message highlights
      Directory = { fg = colors.blue },
      SpecialKey = { fg = colors.grey },
      NonText = { fg = colors.grey },
      Whitespace = { fg = colors.grey },

      -- You could also create a custom highlight group
      FileChangedSign = { fg = colors.orange },
      FileModifiedSign = { fg = colors.red },

      -- Treesitter variables & parameters
      ["@variable"] = { fg = colors.fg },
      ["@variable.builtin"] = { fg = colors.orange },
      ["@parameter"] = { fg = colors.fg },
      ["@parameter.reference"] = { fg = colors.fg },

      -- Treesitter functions & constructors
      ["@function"] = { fg = colors.red },
      ["@function.builtin"] = { fg = colors.red },
      ["@constructor"] = { fg = colors.aqua },

      -- Treesitter types & constants
      ["@type"] = { fg = colors.fg },
      ["@type.builtin"] = { fg = colors.orange },
      ["@constant"] = { fg = colors.orange },
      ["@constant.builtin"] = { fg = colors.orange },

      -- Treesitter keywords
      ["@keyword"] = { fg = colors.blue },
      ["@keyword.import"] = { fg = colors.pink },
      ["@keyword.return"] = { fg = colors.pink },
      ["@keyword.conditional"] = { fg = colors.pink },
      ["@keyword.exception"] = { fg = colors.pink },
      ["@keyword.repeat"] = { fg = colors.pink },
      ["@keyword.operator"] = { fg = colors.pink },

      -- Treesitter punctuation
      ["@punctuation.bracket"] = { fg = colors.fg },
      ["@punctuation.delimiter"] = { fg = colors.grey_light },
      ["@punctuation.special"] = { fg = colors.grey_light },

      -- LSP semantic tokens
      ["@lsp.type.class"] = { fg = colors.aqua },
      ["@lsp.type.namespace"] = { fg = colors.aqua },
      ["@lsp.typemod.variable.defaultLibrary"] = { fg = colors.orange },

      -- HTML/XML tags
      ["@tag"] = { fg = colors.red },
      ["@tag.attribute"] = { fg = colors.purple },
      ["@tag.delimiter"] = { fg = colors.red },
      ["@tag.tsx"] = { fg = colors.aqua },

      -- CSS specific
      ["@constant.css"] = { fg = colors.red },
      ["@type.css"] = { fg = colors.red },
      ["@attribute.css"] = { fg = colors.red },
      ["@property.css"] = { fg = colors.blue },
      ["@keyword.css"] = { fg = colors.red },
      ["@keyword.directive.css"] = { fg = colors.pink },
      ["@keyword.modifier.css"] = { fg = colors.pink },
      ["@string.css"] = { fg = colors.green },
      ["@punctuation.delimiter.css"] = { fg = colors.grey_light },

      -- JSON specific
      ["@property.json"] = { fg = colors.red },

      -- Markdown
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
      ["@markup.link.url.markdown_inline"] = { fg = colors.aqua, underline = true },
      markdownLinkText = { fg = colors.blue },

      -- Diagnostics
      DiagnosticError = { fg = colors.red },
      DiagnosticWarn = { fg = colors.orange },
      DiagnosticInfo = { fg = colors.blue },
      DiagnosticHint = { fg = colors.pink },
      DiagnosticOk = { fg = colors.green },
      DiagnosticVirtualTextError = { fg = colors.red, bg = colors.bg },
      DiagnosticVirtualTextWarn = { fg = colors.orange, bg = colors.bg },
      DiagnosticVirtualTextInfo = { fg = colors.blue, bg = colors.bg },
      DiagnosticVirtualTextHint = { fg = colors.pink, bg = colors.bg },
      DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
      DiagnosticUnderlineWarn = { sp = colors.orange, undercurl = true },
      DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
      DiagnosticUnderlineHint = { sp = colors.pink, undercurl = true },

      -- GitSigns
      GitSignsAdd = { fg = colors.green },
      GitSignsChange = { fg = colors.blue },
      GitSignsDelete = { fg = colors.red },
      GitSignsAddNr = { fg = colors.green },
      GitSignsChangeNr = { fg = colors.blue },
      GitSignsDeleteNr = { fg = colors.red },
      GitSignsAddLn = { bg = colors.bg2 },
      GitSignsChangeLn = { bg = colors.bg2 },
      GitSignsDeleteLn = { bg = colors.bg2 },

      -- Neo-tree
      NeoTreeNormal = { fg = colors.fg, bg = colors.bg },
      NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg },
      NeoTreeDirectoryIcon = { fg = colors.blue },
      NeoTreeDirectoryName = { fg = colors.blue },
      NeoTreeSymbolicLinkTarget = { fg = colors.aqua },
      NeoTreeRootName = { fg = colors.orange },
      NeoTreeDotfile = { fg = colors.grey },
      NeoTreeFileIcon = { fg = colors.fg },
      NeoTreeFileName = { fg = colors.fg },
      NeoTreeFileNameOpened = { fg = colors.fg_light },
      NeoTreeIndentMarker = { fg = colors.grey },
      NeoTreeExpander = { fg = colors.grey },
      NeoTreeModified = { fg = colors.orange },
      NeoTreeGitAdded = { fg = colors.green },
      NeoTreeGitConflict = { fg = colors.red },
      NeoTreeGitDeleted = { fg = colors.red },
      NeoTreeGitIgnored = { fg = colors.grey },
      NeoTreeGitModified = { fg = colors.orange },
      NeoTreeGitUnstaged = { fg = colors.orange },
      NeoTreeGitUntracked = { fg = colors.green },
      NeoTreeGitStaged = { fg = colors.green },

      -- Telescope
      TelescopeNormal = { fg = colors.fg, bg = colors.bg },
      TelescopeBorder = { fg = colors.bg3, bg = colors.bg },
      TelescopePromptNormal = { fg = colors.fg, bg = colors.bg },
      TelescopePromptBorder = { fg = colors.bg3, bg = colors.bg },
      TelescopePromptTitle = { fg = colors.orange },
      TelescopeResultsTitle = { fg = colors.blue },
      TelescopePreviewTitle = { fg = colors.green },
      TelescopeSelection = { bg = colors.selection },
      TelescopeSelectionCaret = { fg = colors.orange },
      TelescopeMatching = { fg = colors.blue },

      -- Lazy.nvim
      LazyProgressTodo = { fg = colors.grey },
      LazyProgressDone = { fg = colors.green },
      LazyCommit = { fg = colors.green },
      LazyCommitType = { fg = colors.pink },
      LazyReasonPlugin = { fg = colors.red },
      LazyReasonRuntime = { fg = colors.blue },
      LazyReasonCmd = { fg = colors.orange },
      LazyReasonSource = { fg = colors.aqua },
      LazyReasonImport = { fg = colors.pink },
      LazyButton = { bg = colors.bg2 },
      LazyButtonActive = { bg = colors.selection },
      LazyH1 = { fg = colors.orange },
      LazyH2 = { fg = colors.blue },
      LazyComment = { fg = colors.grey },
      LazyNormal = { fg = colors.fg, bg = colors.bg },

      -- Completion menu (nvim-cmp)
      Pmenu = { fg = colors.fg, bg = colors.menu },
      PmenuSel = { fg = colors.fg, bg = colors.selection },
      PmenuSbar = { bg = colors.grey },
      PmenuThumb = { bg = colors.grey_light },
      CmpItemAbbrDeprecated = { fg = colors.grey, strikethrough = true },
      CmpItemAbbrMatch = { fg = colors.blue },
      CmpItemAbbrMatchFuzzy = { fg = colors.blue },
      CmpItemKind = { fg = colors.pink },
      CmpItemMenu = { fg = colors.grey },
      CmpItemKindText = { fg = colors.fg },
      CmpItemKindMethod = { fg = colors.blue },
      CmpItemKindFunction = { fg = colors.blue },
      CmpItemKindConstructor = { fg = colors.orange },
      CmpItemKindField = { fg = colors.blue },
      CmpItemKindVariable = { fg = colors.red },
      CmpItemKindClass = { fg = colors.orange },
      CmpItemKindInterface = { fg = colors.orange },
      CmpItemKindModule = { fg = colors.blue },
      CmpItemKindProperty = { fg = colors.red },
      CmpItemKindUnit = { fg = colors.orange },
      CmpItemKindValue = { fg = colors.orange },
      CmpItemKindEnum = { fg = colors.orange },
      CmpItemKindKeyword = { fg = colors.pink },
      CmpItemKindSnippet = { fg = colors.green },
      CmpItemKindColor = { fg = colors.green },
      CmpItemKindFile = { fg = colors.blue },
      CmpItemKindReference = { fg = colors.orange },
      CmpItemKindFolder = { fg = colors.blue },
      CmpItemKindEnumMember = { fg = colors.aqua },
      CmpItemKindConstant = { fg = colors.orange },
      CmpItemKindStruct = { fg = colors.orange },
      CmpItemKindEvent = { fg = colors.pink },
      CmpItemKindOperator = { fg = colors.aqua },
      CmpItemKindTypeParameter = { fg = colors.orange },

      -- LuaSnip
      LuasnipChoiceNodePassive = { fg = colors.grey },
      LuasnipChoiceNodeActive = { fg = colors.orange },
      LuasnipInsertNodePassive = { fg = colors.blue },
      LuasnipInsertNodeActive = { fg = colors.green },

      -- Indent Blankline
      IndentBlanklineChar = { fg = colors.indent },
      IndentBlanklineContextChar = { fg = colors.grey_light },

      -- TreeSitter Context
      TreesitterContext = { bg = colors.bg1 },
      TreesitterContextLineNumber = { fg = colors.grey_light, bg = colors.bg1 },
      TreesitterContextSeparator = { fg = colors.bg3 },

      -- Comment.nvim
      CommentNvimComment = { fg = colors.grey },

      -- Toggle Term
      ToggleTerm1FloatBorder = { fg = colors.bg3, bg = colors.bg },
      ToggleTermNormal = { bg = colors.bg },
      ToggleTermBorder = { fg = colors.bg3, bg = colors.bg },

      -- Flash.nvim (additional)
      FlashMatch = { fg = colors.blue, bg = colors.bg2 },
      FlashPrompt = { fg = colors.fg, bg = colors.bg },

      -- Oil.nvim
      OilDir = { fg = colors.blue },
      OilDirIcon = { fg = colors.blue },
      OilLink = { fg = colors.aqua },
      OilLinkTarget = { fg = colors.grey },
      OilCopy = { fg = colors.orange },
      OilMove = { fg = colors.pink },
      OilChange = { fg = colors.orange },
      OilCreate = { fg = colors.green },
      OilDelete = { fg = colors.red },
      OilPermissionNone = { fg = colors.grey },
      OilPermissionRead = { fg = colors.orange },
      OilPermissionWrite = { fg = colors.orange },
      OilPermissionExecute = { fg = colors.red },

      -- Conform.nvim (formatter status)
      ConformInfo = { fg = colors.blue },
      ConformError = { fg = colors.red },
      ConformWarn = { fg = colors.orange },

      -- FZF-lua
      FzfLuaNormal = { fg = colors.fg, bg = colors.bg },
      FzfLuaBorder = { fg = colors.fg, bg = colors.bg },
      -- FzfLuaTitle = { fg = colors.orange },
      FzfLuaPreviewNormal = { fg = colors.fg, bg = colors.bg },
      FzfLuaPreviewBorder = { fg = colors.fg, bg = colors.bg },
      FzfLuaCursor = { fg = colors.bg, bg = colors.fg },
      FzfLuaCursorLine = { bg = colors.selection },

      -- Which-key
      WhichKey = { fg = colors.pink },
      WhichKeyGroup = { fg = colors.blue },
      WhichKeyDesc = { fg = colors.fg },
      WhichKeySeparator = { fg = colors.grey },
      WhichKeyFloat = { bg = colors.bg },
      WhichKeyBorder = { fg = colors.bg3 },

      -- Notifications
      NotifyERRORBorder = { fg = colors.red },
      NotifyWARNBorder = { fg = colors.orange },
      NotifyINFOBorder = { fg = colors.blue },
      NotifyDEBUGBorder = { fg = colors.grey },
      NotifyTRACEBorder = { fg = colors.pink },
      NotifyERRORIcon = { fg = colors.red },
      NotifyWARNIcon = { fg = colors.orange },
      NotifyINFOIcon = { fg = colors.blue },
      NotifyDEBUGIcon = { fg = colors.grey },
      NotifyTRACEIcon = { fg = colors.pink },
      NotifyERRORTitle = { fg = colors.red },
      NotifyWARNTitle = { fg = colors.orange },
      NotifyINFOTitle = { fg = colors.blue },
      NotifyDEBUGTitle = { fg = colors.grey },
      NotifyTRACETitle = { fg = colors.pink },

      -- Statusline & tabline
      StatusLine = { fg = colors.fg, bg = colors.bg },
      StatusLineNC = { fg = colors.grey, bg = colors.bg },
      TabLine = { fg = colors.grey, bg = colors.bg },
      TabLineFill = { bg = colors.bg },
      TabLineSel = { fg = colors.fg, bg = colors.selection },

      -- Multicursor
      MultiCursor = { fg = colors.bg, bg = colors.pink },
      MultiCursorVisual = { bg = colors.selection },
      MultiCursorDisabledCursor = { fg = colors.grey },
      MultiCursorDisabledVisual = { fg = colors.grey, bg = colors.bg2 },

      -- ++++++++++++++++++++++++++++++++++++++++++++++++++++++
      -- all of this just for the lazyvim groups... has to be a better way

      -- Lazy.nvim
      LazyProgressTodo = { fg = colors.grey },
      LazyProgressDone = { fg = colors.green },
      LazyCommit = { fg = colors.green },
      LazyCommitType = { fg = colors.pink },
      LazyCommitScope = { fg = colors.blue },

      -- Reasons
      LazyReasonPlugin = { fg = colors.red },
      LazyReasonRuntime = { fg = colors.blue },
      LazyReasonCmd = { fg = colors.orange },
      LazyReasonSource = { fg = colors.orange },
      LazyReasonImport = { fg = colors.pink },
      LazyReasonFt = { fg = colors.green },
      LazyReasonEvent = { fg = colors.aqua },
      LazyReasonKeys = { fg = colors.pink },
      LazyReasonStart = { fg = colors.orange },

      -- Sections / UI
      LazyH1 = { fg = colors.fg, bg = colors.red_dark },
      LazyH2 = { fg = colors.fg },
      LazyButton = { bg = colors.bg1 },
      LazyButtonActive = { bg = colors.selection },
      LazyComment = { fg = colors.grey },
      LazyNormal = { fg = colors.fg, bg = colors.bg },

      -- Extras
      LazySpecial = { fg = colors.red },
      LazyDir = { fg = colors.blue },
      LazyUrl = { fg = colors.aqua, underline = true },
      LazyValue = { fg = colors.green },
      LazyProp = { fg = colors.grey },

      -- Status indicators (bullets)
      LazyLocal = { fg = colors.aqua },
      LazyDimmed = { fg = colors.grey },
      LazyNotLoaded = { fg = colors.grey },
      LazyLoaded = { fg = colors.green },
      LazyTaskOutput = { fg = colors.fg },
      LazyTaskError = { fg = colors.red },
      -- ++++++++++++++++++++++++++++++++++++++++++++++++++++++
   }
end

return M

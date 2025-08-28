local M = {}

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
      bg = { bg = colors.bg },
      bg1 = { bg = colors.bg1 },
      bg2 = { bg = colors.bg2 },
      bg3 = { bg = colors.bg3 },
      bg4 = { bg = colors.bg4 },
      bg5 = { bg = colors.bg5 },

      -- Special
      menu_bg = { bg = colors.menu },
      column_bg = { bg = colors.column },
      indent_bg = { bg = colors.indent },
      status_line_bg = { bg = colors.status_line },
      selection_bg = { bg = colors.selection },
   }
end

local function common_highlights(colors)
   return {
      normal = { fg = colors.fg, bg = colors.bg },
      cursor_line = { bg = colors.cursor_line },
      visual = { bg = colors.selection },
      vert_split = { fg = colors.bg3 },
      sign_column = { bg = colors.bg },
      status_line = { fg = colors.fg, bg = colors.status_line },
      status_line_nc = { fg = colors.grey, bg = colors.status_line },
      end_of_buffer = { fg = colors.bg3 },
      selection = { bg = colors.selection },
      search = { fg = colors.bg, bg = colors.red_dark },
      menu = { fg = colors.fg, bg = colors.menu },
      column = { bg = colors.column },
      indent_guide = { fg = colors.indent },
   }
end

M.setup = function(colors)
   local common = common_highlights(colors)
   local c = color_shortcuts(colors)

   return {
      -- ================================================================================
      -- BASE GROUPS
      -- ================================================================================
      Normal = common.normal,
      NormalFloat = common.normal,
      MsgArea = common.normal,

      -- Cursor & selection
      Cursor = { fg = colors.bg, bg = colors.fg },
      Cursor2 = { fg = colors.bg, bg = colors.red },
      CursorLine = common.cursor_line,
      CursorColumn = common.column,
      Visual = common.visual,

      -- Line numbers & columns
      LineNr = c.grey,
      CursorLineNr = c.grey_light,
      SignColumn = common.sign_column,
      ColorColumn = common.column,
      EndOfBuffer = common.end_of_buffer,

      -- Window elements
      WinSeparator = common.vert_split,
      Folded = { fg = colors.fg, bg = colors.bg2 },
      FoldColumn = { fg = colors.grey, bg = colors.bg },

      -- Search & matching
      Search = common.search,
      IncSearch = { fg = colors.fg_light, bg = colors.red_dark },
      Substitute = common.search,
      MatchParen = { fg = colors.fg_light, bg = colors.menu },

      -- Indentation
      IblIndent = common.indent_guide,
      IblScope = c.grey_light,

      -- Yank highlighting
      YankHighlight = { fg = colors.fg_light, bg = colors.bg2 },

      -- ================================================================================
      -- SYNTAX HIGHLIGHTING
      -- ================================================================================
      Comment = c.grey,
      String = c.green,
      Character = c.green,
      Number = c.orange,
      Float = c.orange,
      Boolean = c.orange,
      Identifier = c.aqua,
      Function = c.red,
      Statement = c.grey,
      Keyword = c.blue,
      Operator = c.blue,
      Type = c.fg,
      Special = c.red,
      Delimiter = c.fg,
      Title = c.orange,

      -- Standard Vim message highlights
      WarningMsg = c.orange,
      ErrorMsg = c.red,
      InfoMsg = c.blue,
      HintMsg = c.pink,
      ModeMsg = c.fg,
      MoreMsg = c.green,
      Question = c.blue,

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

      -- types & constants
      ["@type"] = c.fg,
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

      -- HTML/XML tags
      ["@tag"] = c.red,
      ["@tag.attribute"] = c.purple,
      ["@tag.delimiter"] = c.red,
      ["@tag.tsx"] = c.aqua,

      -- CSS specific
      ["@constant.css"] = c.red,
      ["@type.css"] = c.red,
      ["@attribute.css"] = c.red,
      ["@property.css"] = c.blue,
      ["@keyword.css"] = c.red,
      ["@keyword.directive.css"] = c.pink,
      ["@keyword.modifier.css"] = c.pink,
      ["@string.css"] = c.green,
      ["@punctuation.delimiter.css"] = c.grey_light,

      -- JSON specific
      ["@property.json"] = c.red,

      -- Lua specific
      ["@constructor.lua"] = c.fg,
      ["@keyword.operator.lua"] = c.blue,
      ["@module.builtin.lua"] = c.aqua,
      ["@property.lua"] = c.fg,

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
      markdownLinkText = c.blue,

      -- ================================================================================
      -- LSP Context
      -- ================================================================================
      LspCxxHlGroupEnumConstant = c.orange,
      LspCxxHlGroupMemberVariable = c.orange,
      LspCxxHlGroupNamespace = c.blue,
      LspCxxHlSkippedRegion = c.grey,
      LspCxxHlSkippedRegionBeginEnd = c.red,

      LspReferenceText = c.bg2,
      LspReferenceWrite = c.bg2,
      LspReferenceRead = c.bg2,

      LspCodeLens = c.grey,
      LspCodeLensSeparator = c.grey,

      -- Diagnostics
      DiagnosticError = c.red,
      DiagnosticWarn = c.orange,
      DiagnosticInfo = c.aqua,
      DiagnosticHint = c.pink,
      DiagnosticOk = c.green,

      DiagnosticVirtualTextError = { fg = colors.red, bg = colors.bg },
      DiagnosticVirtualTextWarn = { fg = colors.orange, bg = colors.bg },
      DiagnosticVirtualTextInfo = { fg = colors.blue, bg = colors.bg },
      DiagnosticVirtualTextHint = { fg = colors.pink, bg = colors.bg },
      DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
      DiagnosticUnderlineWarn = { sp = colors.orange, undercurl = true },
      DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
      DiagnosticUnderlineHint = { sp = colors.pink, undercurl = true },

      -- ================================================================================
      -- TreeSitter Context
      -- ================================================================================
      TreesitterContext = c.bg1,
      TreesitterContextLineNumber = { fg = colors.grey_light, bg = colors.bg1 },
      TreesitterContextSeparator = c.bg3,

      -- ================================================================================
      -- Lazy.nvim
      -- ================================================================================
      LazyProgressTodo = c.grey,
      LazyProgressDone = c.green,
      LazyCommit = c.green,
      LazyCommitType = c.pink,
      LazyCommitScope = c.blue,

      -- Reasons
      LazyReasonPlugin = c.red,
      LazyReasonRuntime = c.blue,
      LazyReasonCmd = c.orange,
      LazyReasonSource = c.orange,
      LazyReasonImport = c.pink,
      LazyReasonFt = c.green,
      LazyReasonEvent = c.aqua,
      LazyReasonKeys = c.pink,
      LazyReasonStart = c.orange,

      -- Sections / UI
      LazyH1 = { fg = colors.fg, bg = colors.red_dark },
      LazyH2 = c.fg,
      LazyButton = c.bg1,
      LazyButtonActive = c.selection_bg,
      LazyComment = c.grey,
      LazyNormal = common.normal,

      -- Extras
      LazySpecial = c.red,
      LazyDir = c.blue,
      LazyUrl = { fg = colors.aqua, underline = true },
      LazyValue = c.green,
      LazyProp = c.grey,

      -- Status indicators
      LazyLocal = c.aqua,
      LazyDimmed = c.grey,
      LazyNotLoaded = c.grey,
      LazyLoaded = c.green,
      LazyTaskOutput = c.fg,
      LazyTaskError = c.red,

      -- ================================================================================
      -- GitSigns
      -- ================================================================================
      GitSignsAdd = c.green,
      GitSignsChange = c.blue,
      GitSignsDelete = c.red,
      GitSignsAddNr = c.green,
      GitSignsChangeNr = c.blue,
      GitSignsDeleteNr = c.red,
      GitSignsAddLn = c.bg2,
      GitSignsChangeLn = c.bg2,
      GitSignsDeleteLn = c.bg2,

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

      -- ================================================================================
      -- Neo-tree
      -- ================================================================================
      NeoTreeNormal = common.normal,
      NeoTreeNormalNC = common.normal,
      NeoTreeDirectoryIcon = c.blue,
      NeoTreeDirectoryName = c.blue,
      NeoTreeSymbolicLinkTarget = c.aqua,
      NeoTreeRootName = c.orange,
      NeoTreeDotfile = c.grey,
      NeoTreeFileIcon = c.fg,
      NeoTreeFileName = c.fg,
      NeoTreeFileNameOpened = c.fg_light,
      NeoTreeIndentMarker = c.grey,
      NeoTreeExpander = c.grey,
      NeoTreeModified = c.orange,
      NeoTreeGitAdded = c.green,
      NeoTreeGitConflict = c.red,
      NeoTreeGitDeleted = c.red,
      NeoTreeGitIgnored = c.grey,
      NeoTreeGitModified = c.orange,
      NeoTreeGitUnstaged = c.orange,
      NeoTreeGitUntracked = c.green,
      NeoTreeGitStaged = c.green,

      -- ================================================================================
      -- Telescope
      -- ================================================================================
      TelescopeNormal = common.normal,
      TelescopeBorder = { fg = colors.bg3, bg = colors.bg },
      TelescopePromptNormal = common.normal,
      TelescopePromptBorder = { fg = colors.bg3, bg = colors.bg },
      TelescopePromptTitle = c.orange,
      TelescopeResultsTitle = c.blue,
      TelescopePreviewTitle = c.green,
      TelescopeSelection = common.selection,
      TelescopeSelectionCaret = c.orange,
      TelescopeMatching = c.blue,

      -- ================================================================================
      -- Completion menu (nvim-cmp)
      -- ================================================================================
      Pmenu = common.menu,
      PmenuSel = { fg = colors.fg, bg = colors.selection },
      PmenuSbar = c.grey,
      PmenuThumb = c.grey_light,
      CmpItemAbbrDeprecated = { fg = colors.grey, strikethrough = true },
      CmpItemAbbrMatch = c.blue,
      CmpItemAbbrMatchFuzzy = c.blue,
      CmpItemKind = c.pink,
      CmpItemMenu = c.grey,
      CmpItemKindText = c.fg,
      CmpItemKindMethod = c.blue,
      CmpItemKindFunction = c.blue,
      CmpItemKindConstructor = c.orange,
      CmpItemKindField = c.blue,
      CmpItemKindVariable = c.red,
      CmpItemKindClass = c.orange,
      CmpItemKindInterface = c.orange,
      CmpItemKindModule = c.blue,
      CmpItemKindProperty = c.red,
      CmpItemKindUnit = c.orange,
      CmpItemKindValue = c.orange,
      CmpItemKindEnum = c.orange,
      CmpItemKindKeyword = c.pink,
      CmpItemKindSnippet = c.green,
      CmpItemKindColor = c.green,
      CmpItemKindFile = c.blue,
      CmpItemKindReference = c.orange,
      CmpItemKindFolder = c.blue,
      CmpItemKindEnumMember = c.aqua,
      CmpItemKindConstant = c.orange,
      CmpItemKindStruct = c.orange,
      CmpItemKindEvent = c.pink,
      CmpItemKindOperator = c.aqua,
      CmpItemKindTypeParameter = c.orange,

      -- ================================================================================
      -- LuaSnip
      -- ================================================================================
      LuasnipChoiceNodePassive = c.grey,
      LuasnipChoiceNodeActive = c.orange,
      LuasnipInsertNodePassive = c.blue,
      LuasnipInsertNodeActive = c.green,

      -- ================================================================================
      -- Indent Blankline
      -- ================================================================================
      IndentBlanklineChar = common.indent_guide,
      IndentBlanklineContextChar = c.grey_light,

      -- ================================================================================
      -- Comment.nvim
      -- ================================================================================
      CommentNvimComment = c.grey,

      -- ================================================================================
      -- Toggle Term
      -- ================================================================================
      ToggleTerm1FloatBorder = { fg = colors.bg3, bg = colors.bg },
      ToggleTermNormal = c.bg,
      ToggleTermBorder = { fg = colors.bg3, bg = colors.bg },

      -- ================================================================================
      -- Flash.nvim
      -- ================================================================================
      FlashCurrent = { fg = colors.bg, bg = colors.red_dark },
      FlashMatch = { fg = colors.bg, bg = colors.red_dark },
      FlashLabel = { fg = colors.fg_light, bg = colors.blue_dark },

      -- ================================================================================
      -- Oil.nvim
      -- ================================================================================
      OilDir = c.blue,
      OilDirIcon = c.blue,
      OilLink = c.aqua,
      OilLinkTarget = c.grey,
      OilCopy = c.orange,
      OilMove = c.pink,
      OilChange = c.orange,
      OilCreate = c.green,
      OilDelete = c.red,
      OilPermissionNone = c.grey,
      OilPermissionRead = c.orange,
      OilPermissionWrite = c.orange,
      OilPermissionExecute = c.red,

      -- ================================================================================
      -- Conform
      -- ================================================================================
      ConformInfo = c.blue,
      ConformError = c.red,
      ConformWarn = c.orange,

      -- ================================================================================
      -- FZF-lua
      -- ================================================================================
      FzfLuaNormal = common.normal,
      FzfLuaBorder = { fg = colors.fg, bg = colors.bg },
      FzfLuaPreviewNormal = common.normal,
      FzfLuaPreviewBorder = { fg = colors.fg, bg = colors.bg },
      FzfLuaCursor = { fg = colors.bg, bg = colors.fg },
      FzfLuaCursorLine = common.selection,

      -- ================================================================================
      -- Which-key
      -- ================================================================================
      WhichKey = c.pink,
      WhichKeyGroup = c.blue,
      WhichKeyDesc = c.fg,
      WhichKeySeparator = c.grey,
      WhichKeyFloat = c.bg,
      WhichKeyBorder = c.bg3,

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

      -- ================================================================================
      -- Statusline & tabline
      -- ================================================================================
      StatusLine = common.status_line,

      -- ================================================================================
      -- Multicursor
      -- ================================================================================
      MultiCursor = { fg = colors.bg, bg = colors.pink },
      MultiCursorVisual = common.selection,
      MultiCursorDisabledCursor = c.grey,
      MultiCursorDisabledVisual = { fg = colors.grey, bg = colors.bg2 },
   }
end

return M

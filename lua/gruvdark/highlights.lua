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
      column_bg = { bg = colors.column },
      indent_bg = { bg = colors.indent },
      status_line_bg = { bg = colors.status_line },
      selection_bg = { bg = colors.selection },
   }
end

local function common_highlights(colors)
   return {
      normal = { fg = colors.fg, bg = colors.bg },
      cursor_line = { bg = colors.none },
      visual = { bg = colors.selection },
      vert_split = { fg = colors.bg3 },
      sign_column = { bg = colors.bg },
      status_line = { fg = colors.fg, bg = colors.status_line },
      status_line_nc = { fg = colors.grey, bg = colors.status_line },
      end_of_buffer = { fg = colors.bg3 },
      selection = { bg = colors.selection },
      search = { fg = colors.bg, bg = colors.red_dark },
      column = { bg = colors.column },
      indent_guide = { fg = colors.indent },
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
      NormalFloat = common.normal,
      MsgArea = common.normal,

      -- Cursor & selection
      Cursor = { fg = colors.bg, bg = colors.fg },
      Cursor2 = { fg = colors.bg, bg = colors.red },
      CursorLine = common.cursor_line,
      CursorColumn = common.column,
      Visual = common.visual,
      VisualNOS = { fg = colors.none, bg = colors.bg2, underline = true },

      -- Line numbers & columns
      LineNr = c.grey,
      CursorLineNr = c.grey_light,
      SignColumn = common.sign_column,
      ColorColumn = common.column,
      EndOfBuffer = common.end_of_buffer,

      -- Window elements
      WinSeparator = common.vert_split,
      Folded = { fg = colors.fg, bg = colors.bg1 },
      FoldColumn = { fg = colors.grey, bg = colors.bg },

      -- Search & matching
      Search = common.search,
      IncSearch = { fg = colors.fg_light, bg = colors.red_dark },
      Substitute = common.search,
      MatchParen = { fg = colors.fg_light, bg = colors.bg3 },

      -- Yank highlighting
      YankHighlight = { fg = colors.fg_light, bg = colors.bg2 },

      -- Extras
      QuickFixLine = { fg = colors.blue, underline = true },
      FloatBorder = { fg = colors.bg3, bg = colors.bg },
      Terminal = common.normal,
      Conceal = { fg = colors.grey, bg = colors.bg1 },

      -- Completion menus
      Pmenu = { fg = colors.none, bg = colors.bg3 },
      PmenuSel = { fg = colors.none, bg = colors.bg4 },
      PmenuSbar = { fg = colors.none, bg = colors.bg4 },
      PmenuThumb = { fg = colors.none, bg = colors.grey },

      -- Statusline & tabline
      StatusLine = common.status_line,
      StatusLineNC = common.status_line_nc,

      TabLine = common.status_line,
      TabLineFill = common.status_line,
      TabLineSel = { fg = colors.fg, bg = colors.grey },

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
      TreesitterContext = c.bg1,
      TreesitterContextLineNumber = { fg = colors.grey_light, bg = colors.bg1 },
      TreesitterContextSeparator = c.bg3,

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

      -- Debug
      Debug = c.orange,
      debugPC = { fg = colors.bg, bg = colors.green },
      debugBreakpoint = { fg = colors.bg, bg = colors.red },

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
      DiffAdd = { fg = colors.none, bg = colors.diff_add },
      DiffDelete = { fg = colors.none, bg = colors.diff_delete },
      DiffChange = { fg = colors.none, bg = colors.diff_change },
      DiffText = { fg = colors.none, bg = colors.diff_text },
      DiffAdded = c.green,
      DiffChanged = c.blue,
      DiffRemoved = c.red,
      DiffDeleted = c.red,
      DiffFile = c.aqua,
      DiffIndexLine = c.grey,

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
      LazyButton = { bg = colors.none },
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
      -- Conform
      -- ================================================================================
      ConformInfo = c.blue,
      ConformError = c.red,
      ConformWarn = c.orange,

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
      -- FZF-lua
      -- ================================================================================
      -- FzfLuaNormal = common.normal,
      -- FzfLuaBorder = { fg = colors.fg, bg = colors.bg },
      -- FzfLuaPreviewNormal = common.normal,
      -- FzfLuaPreviewBorder = { fg = colors.fg, bg = colors.bg },
      -- FzfLuaCursor = { fg = colors.bg, bg = colors.fg },
      -- FzfLuaCursorLine = common.selection,

      -- ================================================================================
      -- Telescope
      -- ================================================================================
      -- TelescopeNormal = common.normal,
      -- TelescopeBorder = { fg = colors.fg, bg = colors.bg },
      -- TelescopePromptNormal = common.normal,
      -- TelescopePromptBorder = { fg = colors.bg3, bg = colors.bg },
      -- TelescopePromptTitle = c.orange,
      -- TelescopeResultsTitle = c.blue,
      -- TelescopePreviewTitle = c.green,
      -- TelescopeSelection = common.selection,
      -- TelescopeSelectionCaret = c.orange,
      -- TelescopeMatching = c.blue,

      -- ================================================================================
      -- Blink-cmp
      -- ================================================================================
      BlinkCmpMenu = { fg = colors.fg, bg = colors.bg3 },
      BlinkCmpMenuBorder = { fg = colors.fg, bg = colors.bg3 },
      BlinkCmpDoc = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpDocBorder = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpDocSeparator = { fg = colors.fg, bg = colors.bg5 },
      BlinkCmpScrollBarThumb = { bg = colors.grey },
      BlinkCmpScrollBarGutter = { bg = colors.bg2 },
      BlinkCmpLabelMatch = { fg = colors.green },

      -- ================================================================================
      -- Nvim-cmp
      -- ================================================================================
      -- CmpItemAbbrDeprecated = { fg = colors.grey, strikethrough = true },
      -- CmpItemAbbrMatch = c.blue,
      -- CmpItemAbbrMatchFuzzy = c.blue,
      -- CmpItemKind = c.pink,
      -- CmpItemMenu = c.grey,
      -- CmpItemKindText = c.fg,
      -- CmpItemKindMethod = c.blue,
      -- CmpItemKindFunction = c.blue,
      -- CmpItemKindConstructor = c.orange,
      -- CmpItemKindField = c.blue,
      -- CmpItemKindVariable = c.red,
      -- CmpItemKindClass = c.orange,
      -- CmpItemKindInterface = c.orange,
      -- CmpItemKindModule = c.blue,
      -- CmpItemKindProperty = c.red,
      -- CmpItemKindUnit = c.orange,
      -- CmpItemKindValue = c.orange,
      -- CmpItemKindEnum = c.orange,
      -- CmpItemKindKeyword = c.pink,
      -- CmpItemKindSnippet = c.green,
      -- CmpItemKindColor = c.green,
      -- CmpItemKindFile = c.blue,
      -- CmpItemKindReference = c.orange,
      -- CmpItemKindFolder = c.blue,
      -- CmpItemKindEnumMember = c.aqua,
      -- CmpItemKindConstant = c.orange,
      -- CmpItemKindStruct = c.orange,
      -- CmpItemKindEvent = c.pink,
      -- CmpItemKindOperator = c.aqua,
      -- CmpItemKindTypeParameter = c.orange,

      -- ================================================================================
      -- LuaSnip
      -- ================================================================================
      LuasnipChoiceNodePassive = c.grey,
      LuasnipChoiceNodeActive = c.orange,
      LuasnipInsertNodePassive = c.blue,
      LuasnipInsertNodeActive = c.green,

      -- ================================================================================
      -- Flash.nvim
      -- ================================================================================
      FlashCurrent = { fg = colors.bg, bg = colors.red_dark },
      FlashMatch = { fg = colors.bg, bg = colors.red_dark },
      FlashLabel = { fg = colors.fg_light, bg = colors.blue_dark },

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
      -- Indentation
      -- ================================================================================
      IblIndent = common.indent_guide,
      IblScope = c.grey_light,

      -- ================================================================================
      -- Multicursor
      -- ================================================================================
      -- MultiCursor = { fg = colors.bg, bg = colors.pink },
      -- MultiCursorVisual = common.selection,
      -- MultiCursorDisabledCursor = c.grey,
      -- MultiCursorDisabledVisual = { fg = colors.grey, bg = colors.bg2 },

      -- ================================================================================
      -- Which-key
      -- ================================================================================
      -- WhichKey = c.pink,
      -- WhichKeyGroup = c.blue,
      -- WhichKeyDesc = c.fg,
      -- WhichKeySeparator = c.grey,
      -- WhichKeyFloat = c.bg,
      -- WhichKeyBorder = c.bg3,

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
   }

   for kind, color in pairs(lsp_kind_icons_color) do
      highlights["CmpItemKind" .. kind] = { fg = color.fg }
      highlights["BlinkCmpKind" .. kind] = { fg = color.fg }
   end

   return highlights
end

return M

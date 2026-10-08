local M = {}
local c = require("derry.palette")

M.setup = function()
  return {
    ------------------------------------------------------------------
    -- Core UI
    ------------------------------------------------------------------
    Normal          = { fg = c.fg0, bg = c.bg0 },
    NormalNC        = { fg = c.fg0, bg = c.bg0 },
    NormalFloat     = { fg = c.fg0, bg = c.bg1 },
    FloatBorder     = { fg = c.border, bg = c.bg1 },
    FloatTitle      = { fg = c.bright_magenta, bg = c.bg1, bold = true },
    FloatShadow     = { bg = c.bg1, blend = 50 },

    Cursor          = { fg = c.bg0, bg = c.fg0 },
    lCursor         = { link = "Cursor" },
    CursorIM        = { link = "Cursor" },
    TermCursor      = { link = "Cursor" },

    CursorLine      = { bg = c.cursorline },
    CursorColumn    = { bg = c.cursorline },
    ColorColumn     = { bg = c.cursorline },

    LineNr          = { fg = c.fg_dim },
    CursorLineNr    = { fg = c.cursorlinenr, bold = true },
    SignColumn      = { fg = c.fg_dim, bg = c.bg0 },
    FoldColumn      = { fg = c.fg_dim, bg = c.bg0 },
    Folded          = { fg = c.comment, bg = c.bg1, italic = true },

    Visual          = { bg = c.visual },
    VisualNOS       = { link = "Visual" },

    VertSplit       = { fg = c.split, bg = c.bg0 },
    WinSeparator    = { link = "VertSplit" },

    StatusLine      = { fg = c.statusline_fg, bg = c.statusline_bg },
    StatusLineNC    = { fg = c.fg_dim, bg = c.bg1 },

    TabLine         = { fg = c.fg_dim, bg = c.bg1 },
    TabLineFill     = { bg = c.bg1 },
    TabLineSel      = { fg = c.fg1, bg = c.bg2, bold = true },

    Pmenu           = { fg = c.fg0, bg = c.pmenu_bg },
    PmenuSel        = { fg = c.pmenu_sel_fg, bg = c.pmenu_sel_bg, bold = true },
    PmenuSbar       = { bg = c.bg1 },
    PmenuThumb      = { bg = c.bg2 },
    WildMenu        = { fg = c.bg0, bg = c.bright_magenta, bold = true },

    MatchParen      = { fg = c.bright_blue, bold = true },
    NonText         = { fg = c.nontext },
    SpecialKey      = { fg = c.nontext },
    Whitespace      = { fg = c.whitespace },
    EndOfBuffer     = { fg = c.bg0 },

    Directory       = { fg = c.bright_blue },
    Title           = { fg = c.bright_magenta, bold = true },
    Question        = { fg = c.bright_magenta },
    MoreMsg         = { fg = c.green },
    ModeMsg         = { fg = c.fg1, bold = true },
    ErrorMsg        = { fg = c.error, bold = true },
    WarningMsg      = { fg = c.warn },

    Search          = { fg = c.bg0, bg = c.bright_magenta },
    IncSearch       = { fg = c.bg0, bg = c.bright_magenta, bold = true },
    CurSearch       = { link = "IncSearch" },
    Substitute      = { fg = c.bg0, bg = c.red },

    Conceal         = { fg = c.fg_dim },
    QuickFixLine    = { bg = c.bg2 },
    qfFileName      = { fg = c.bright_blue },
    qfLineNr        = { fg = c.fg_dim },

    SpellBad        = { undercurl = true, sp = c.error },
    SpellCap        = { undercurl = true, sp = c.warn },
    SpellLocal      = { undercurl = true, sp = c.info },
    SpellRare       = { undercurl = true, sp = c.hint },

    DiffAdd         = { fg = c.diff_add },
    DiffChange      = { fg = c.diff_change },
    DiffDelete      = { fg = c.diff_delete },
    DiffText        = { fg = c.diff_text, bold = true },
    Added           = { fg = c.diff_add },
    Changed         = { fg = c.diff_change },
    Removed         = { fg = c.diff_delete },

    ------------------------------------------------------------------
    -- Base syntax
    ------------------------------------------------------------------
    Comment         = { fg = c.comment, italic = true },
    Constant        = { fg = c.red },
    String          = { fg = c.green },
    Character       = { fg = c.green },
    Number          = { fg = c.red },
    Float           = { fg = c.red },
    Boolean         = { fg = c.red, bold = true },

    Identifier      = { fg = c.fg0 },
    Function        = { fg = c.bright_blue, bold = true },
    Statement       = { fg = c.bright_magenta },
    Conditional     = { fg = c.bright_magenta },
    Repeat          = { fg = c.bright_magenta },
    Label           = { fg = c.bright_magenta },
    Operator        = { fg = c.fg2 },
    Keyword         = { fg = c.bright_magenta, italic = true },
    Exception       = { fg = c.red },

    PreProc         = { fg = c.yellow },
    Include         = { fg = c.bright_blue, italic = true },
    Define          = { fg = c.bright_magenta },
    Macro           = { fg = c.bright_magenta },
    PreCondit       = { fg = c.yellow },

    Type            = { fg = c.yellow, bold = true },
    StorageClass    = { fg = c.yellow, bold = true },
    Structure       = { fg = c.yellow },
    Typedef         = { fg = c.yellow },

    Special         = { fg = c.bright_magenta },
    SpecialChar     = { fg = c.bright_magenta },
    SpecialComment  = { fg = c.comment, italic = true },
    Delimiter       = { fg = c.fg2 },
    Tag             = { fg = c.bright_blue },
    Debug           = { fg = c.bright_magenta },
    Todo            = { fg = c.bg0, bg = c.bright_yellow, bold = true },
    Error           = { fg = c.error },
    Underlined      = { underline = true },
    Ignore          = { fg = c.bg0 },

    ------------------------------------------------------------------
    -- Diagnostics
    ------------------------------------------------------------------
    DiagnosticError = { fg = c.error },
    DiagnosticWarn  = { fg = c.warn },
    DiagnosticInfo  = { fg = c.info },
    DiagnosticHint  = { fg = c.hint },
    DiagnosticOk    = { fg = c.green },

    DiagnosticVirtualTextError = { fg = c.error, bg = c.bg1 },
    DiagnosticVirtualTextWarn  = { fg = c.warn,  bg = c.bg1 },
    DiagnosticVirtualTextInfo  = { fg = c.info,  bg = c.bg1 },
    DiagnosticVirtualTextHint  = { fg = c.hint,  bg = c.bg1 },

    DiagnosticUnderlineError = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.warn },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.hint },

    DiagnosticFloatingError = { fg = c.error, bg = c.bg1 },
    DiagnosticFloatingWarn  = { fg = c.warn,  bg = c.bg1 },
    DiagnosticFloatingInfo  = { fg = c.info,  bg = c.bg1 },
    DiagnosticFloatingHint  = { fg = c.hint,  bg = c.bg1 },

    DiagnosticSignError = { fg = c.error },
    DiagnosticSignWarn  = { fg = c.warn },
    DiagnosticSignInfo  = { fg = c.info },
    DiagnosticSignHint  = { fg = c.hint },

    ------------------------------------------------------------------
    -- LSP
    ------------------------------------------------------------------
    LspReferenceText  = { bg = c.bg2 },
    LspReferenceRead  = { bg = c.bg2 },
    LspReferenceWrite = { bg = c.bg2, underline = true },

    LspSignatureActiveParameter = { fg = c.bright_magenta, bold = true },
    LspCodeLens                 = { fg = c.comment, italic = true },
    LspInlayHint                = { fg = c.comment, bg = c.bg1, italic = true },

    ["@lsp.type.class"]     = { link = "@type" },
    ["@lsp.type.enum"]      = { link = "@type" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.struct"]    = { link = "@type" },
    ["@lsp.type.type"]      = { link = "@type" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"]  = { link = "@property" },
    ["@lsp.type.function"]  = { link = "@function" },
    ["@lsp.type.method"]    = { link = "@function.method" },
    ["@lsp.type.variable"]  = { link = "@variable" },

    ------------------------------------------------------------------
    -- Tree-sitter
    ------------------------------------------------------------------
    ["@variable"]              = { fg = c.fg0 },
    ["@variable.builtin"]      = { fg = c.bright_magenta, italic = true },
    ["@variable.parameter"]    = { fg = c.fg2, italic = true },
    ["@variable.member"]       = { fg = c.bright_blue },
    ["@property"]              = { fg = c.bright_blue },

    ["@constant"]              = { fg = c.red },
    ["@constant.builtin"]      = { fg = c.red, bold = true },
    ["@constant.macro"]        = { fg = c.bright_magenta },

    ["@module"]                = { fg = c.bright_blue },
    ["@module.builtin"]        = { fg = c.bright_blue, italic = true },
    ["@label"]                 = { fg = c.bright_magenta },

    ["@string"]                = { fg = c.green },
    ["@string.documentation"]  = { fg = c.bright_magenta, italic = true },
    ["@string.regexp"]         = { fg = c.bright_blue },
    ["@string.escape"]         = { fg = c.bright_magenta, bold = true },
    ["@string.special"]        = { fg = c.bright_blue },
    ["@string.special.symbol"] = { fg = c.bright_blue },
    ["@string.special.path"]   = { fg = c.bright_blue, underline = true },
    ["@string.special.url"]    = { fg = c.bright_blue, underline = true },

    ["@character"]             = { fg = c.green },
    ["@character.special"]     = { fg = c.bright_magenta },

    ["@boolean"]               = { fg = c.red, bold = true },
    ["@number"]                = { fg = c.red },
    ["@number.float"]          = { fg = c.red },

    ["@type"]                  = { fg = c.yellow, bold = true },
    ["@type.builtin"]          = { fg = c.yellow, italic = true },
    ["@type.definition"]       = { fg = c.yellow },
    ["@type.qualifier"]        = { fg = c.bright_magenta },

    ["@attribute"]             = { fg = c.bright_blue },
    ["@attribute.builtin"]     = { fg = c.bright_blue, italic = true },

    ["@function"]              = { fg = c.bright_blue, bold = true },
    ["@function.builtin"]      = { fg = c.bright_blue, bold = true },
    ["@function.call"]         = { fg = c.bright_blue },
    ["@function.macro"]        = { fg = c.bright_magenta },
    ["@function.method"]       = { fg = c.bright_blue, bold = true },
    ["@function.method.call"]  = { fg = c.bright_blue },
    ["@constructor"]           = { fg = c.bright_blue },
    ["@constructor.lua"]       = { fg = c.fg2 },

    ["@operator"]              = { fg = c.fg2 },

    ["@keyword"]                        = { fg = c.bright_magenta, italic = true },
    ["@keyword.coroutine"]              = { fg = c.bright_magenta, italic = true },
    ["@keyword.function"]               = { fg = c.bright_magenta, italic = true },
    ["@keyword.operator"]               = { fg = c.bright_magenta },
    ["@keyword.import"]                 = { fg = c.bright_blue, italic = true },
    ["@keyword.type"]                   = { fg = c.bright_magenta },
    ["@keyword.modifier"]               = { fg = c.bright_magenta },
    ["@keyword.repeat"]                 = { fg = c.bright_magenta },
    ["@keyword.return"]                 = { fg = c.bright_magenta, italic = true },
    ["@keyword.debug"]                  = { fg = c.red },
    ["@keyword.exception"]              = { fg = c.red, italic = true },
    ["@keyword.conditional"]            = { fg = c.bright_magenta },
    ["@keyword.conditional.ternary"]    = { fg = c.bright_magenta },
    ["@keyword.directive"]              = { fg = c.yellow },
    ["@keyword.directive.define"]       = { fg = c.yellow },

    ["@punctuation.delimiter"] = { fg = c.fg2 },
    ["@punctuation.bracket"]   = { fg = c.fg2 },
    ["@punctuation.special"]   = { fg = c.bright_magenta },

    ["@comment"]               = { fg = c.comment, italic = true },
    ["@comment.documentation"] = { fg = c.comment, italic = true },
    ["@comment.error"]         = { fg = c.bg0, bg = c.error, bold = true },
    ["@comment.warning"]       = { fg = c.bg0, bg = c.warn, bold = true },
    ["@comment.todo"]          = { fg = c.bg0, bg = c.bright_yellow, bold = true },
    ["@comment.note"]          = { fg = c.bg0, bg = c.bright_magenta, bold = true },

    ["@markup.strong"]         = { bold = true },
    ["@markup.italic"]         = { italic = true },
    ["@markup.strikethrough"]  = { strikethrough = true },
    ["@markup.underline"]      = { underline = true },
    ["@markup.heading"]        = { fg = c.bright_magenta, bold = true },
    ["@markup.heading.1"]      = { fg = c.bright_magenta, bold = true },
    ["@markup.heading.2"]      = { fg = c.bright_blue, bold = true },
    ["@markup.heading.3"]      = { fg = c.bright_magenta, bold = true },
    ["@markup.heading.4"]      = { fg = c.green, bold = true },
    ["@markup.heading.5"]      = { fg = c.yellow, bold = true },
    ["@markup.heading.6"]      = { fg = c.red, bold = true },
    ["@markup.link"]           = { fg = c.bright_blue, underline = true },
    ["@markup.link.label"]     = { fg = c.bright_magenta },
    ["@markup.link.url"]       = { fg = c.bright_blue, underline = true },
    ["@markup.raw"]            = { fg = c.green },
    ["@markup.raw.block"]      = { fg = c.green },
    ["@markup.list"]           = { fg = c.bright_magenta },
    ["@markup.list.checked"]   = { fg = c.bright_magenta },
    ["@markup.list.unchecked"] = { fg = c.fg_dim },
    ["@markup.quote"]          = { fg = c.fg_dim, italic = true },

    ["@diff.plus"]             = { fg = c.diff_add },
    ["@diff.minus"]            = { fg = c.diff_delete },
    ["@diff.delta"]            = { fg = c.diff_change },

    ["@tag"]                   = { fg = c.bright_magenta },
    ["@tag.builtin"]           = { fg = c.bright_magenta },
    ["@tag.attribute"]         = { fg = c.bright_blue },
    ["@tag.delimiter"]         = { fg = c.fg2 },

    ------------------------------------------------------------------
    -- blink.cmp
    ------------------------------------------------------------------
    BlinkCmpMenu              = { fg = c.fg0, bg = c.pmenu_bg },
    BlinkCmpMenuBorder        = { fg = c.border, bg = c.pmenu_bg },
    BlinkCmpMenuSelection     = { fg = c.pmenu_sel_fg, bg = c.pmenu_sel_bg, bold = true },
    BlinkCmpScrollBarGutter   = { bg = c.bg1 },
    BlinkCmpScrollBarThumb    = { bg = c.bg2 },
    BlinkCmpLabel             = { fg = c.fg0 },
    BlinkCmpLabelDeprecated   = { fg = c.fg_dim, strikethrough = true },
    BlinkCmpLabelMatch        = { fg = c.bright_magenta, bold = true },
    BlinkCmpLabelDetail       = { fg = c.fg_dim },
    BlinkCmpLabelDescription  = { fg = c.fg_dim },
    BlinkCmpKind              = { fg = c.bright_blue },
    BlinkCmpSource            = { fg = c.comment },
    BlinkCmpGhostText         = { fg = c.comment, italic = true },
    BlinkCmpDoc               = { fg = c.fg0, bg = c.bg1 },
    BlinkCmpDocBorder         = { fg = c.border, bg = c.bg1 },
    BlinkCmpDocSeparator      = { fg = c.border },
    BlinkCmpDocCursorLine     = { bg = c.bg2 },
    BlinkCmpSignatureHelp     = { fg = c.fg0, bg = c.bg1 },
    BlinkCmpSignatureHelpBorder = { fg = c.border, bg = c.bg1 },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.bright_magenta, bold = true },

    ------------------------------------------------------------------
    -- nvim-tree
    ------------------------------------------------------------------
    NvimTreeNormal           = { fg = c.fg0, bg = c.bg0 },
    NvimTreeNormalNC         = { fg = c.fg0, bg = c.bg0 },
    NvimTreeWinSeparator     = { fg = c.split, bg = c.bg0 },
    NvimTreeRootFolder       = { fg = c.bright_magenta, bold = true },
    NvimTreeFolderName       = { fg = c.bright_blue },
    NvimTreeFolderIcon       = { fg = c.bright_blue },
    NvimTreeOpenedFolderName = { fg = c.bright_magenta, bold = true },
    NvimTreeEmptyFolderName  = { fg = c.fg_dim },
    NvimTreeSymlink          = { fg = c.bright_blue },
    NvimTreeSymlinkIcon      = { fg = c.bright_blue },
    NvimTreeExecFile         = { fg = c.green, bold = true },
    NvimTreeImageFile        = { fg = c.bright_magenta },
    NvimTreeSpecialFile      = { fg = c.bright_yellow, underline = true },
    NvimTreeGitDirty         = { fg = c.warn },
    NvimTreeGitStaged        = { fg = c.green },
    NvimTreeGitMerge         = { fg = c.bright_magenta },
    NvimTreeGitRenamed       = { fg = c.bright_blue },
    NvimTreeGitNew           = { fg = c.green },
    NvimTreeGitDeleted       = { fg = c.error },
    NvimTreeIndentMarker     = { fg = c.bg2 },
    NvimTreeCursorLine       = { bg = c.cursorline },

    ------------------------------------------------------------------
    -- devicons
    ------------------------------------------------------------------
    DevIconDefault  = { fg = c.fg_dim },
    DevIconLua      = { fg = c.bright_blue },
    DevIconVim      = { fg = c.green },
    DevIconPython   = { fg = c.bright_yellow },
    DevIconJs       = { fg = c.bright_yellow },
    DevIconTs       = { fg = c.bright_blue },
    DevIconHtml     = { fg = c.bright_orange },
    DevIconCss      = { fg = c.bright_blue },
    DevIconJson     = { fg = c.bright_yellow },
    DevIconMarkdown = { fg = c.fg1 },
    DevIconGit      = { fg = c.bright_orange },

    ------------------------------------------------------------------
    -- fidget.nvim
    ------------------------------------------------------------------
    FidgetTitle = { fg = c.bright_magenta, bold = true },
    FidgetTask  = { fg = c.fg_dim },

    ------------------------------------------------------------------
    -- flash.nvim
    ------------------------------------------------------------------
    FlashBackdrop   = { fg = c.comment },
    FlashMatch      = { fg = c.bg0, bg = c.bright_blue },
    FlashCurrent    = { fg = c.bg0, bg = c.bright_magenta },
    FlashLabel      = { fg = c.bg0, bg = c.bright_magenta, bold = true },
    FlashPrompt     = { fg = c.fg0, bg = c.bg1 },
    FlashPromptIcon = { fg = c.bright_magenta },
    FlashCursor     = { fg = c.bg0, bg = c.red },

    ------------------------------------------------------------------
    -- harpoon
    ------------------------------------------------------------------
    HarpoonWindow     = { link = "NormalFloat" },
    HarpoonBorder     = { link = "FloatBorder" },
    HarpoonTitle      = { fg = c.bright_magenta, bold = true },
    HarpoonFileName   = { fg = c.fg0 },
    HarpoonFileIndex  = { fg = c.bright_magenta, bold = true },
    HarpoonActiveFile = { fg = c.bright_magenta, bold = true },
    HarpoonCursor     = { bg = c.cursorline },

    ------------------------------------------------------------------
    -- himalaya
    ------------------------------------------------------------------
    HimlEmail  = { fg = c.bright_blue },
    HimlHeader = { fg = c.bright_magenta, bold = true },
    HimlFlag   = { fg = c.bright_magenta },

    ------------------------------------------------------------------
    -- mini.nvim
    ------------------------------------------------------------------
    MiniStatuslineModeNormal  = { fg = c.bg0, bg = c.bright_magenta, bold = true },
    MiniStatuslineModeInsert  = { fg = c.bg0, bg = c.green, bold = true },
    MiniStatuslineModeVisual  = { fg = c.bg0, bg = c.bright_blue, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg0, bg = c.red, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg0, bg = c.bright_yellow, bold = true },
    MiniStatuslineModeOther   = { fg = c.bg0, bg = c.bright_blue, bold = true },

    MiniStatuslineDevinfo  = { fg = c.fg1, bg = c.bg1 },
    MiniStatuslineFileinfo = { fg = c.fg1, bg = c.bg1 },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg0 },
    MiniStatuslineInactive = { fg = c.fg_dim, bg = c.bg1 },

    MiniTablineCurrent         = { fg = c.fg0, bg = c.bg2, bold = true },
    MiniTablineVisible         = { fg = c.fg_dim, bg = c.bg1 },
    MiniTablineHidden          = { fg = c.fg_dim, bg = c.bg0 },
    MiniTablineModifiedCurrent = { fg = c.bright_yellow, bg = c.bg2, bold = true },
    MiniTablineModifiedVisible = { fg = c.bright_yellow, bg = c.bg1 },
    MiniTablineModifiedHidden  = { fg = c.warn, bg = c.bg0 },
    MiniTablineFill            = { bg = c.bg0 },
    MiniTablineTabpagesection  = { fg = c.bg0, bg = c.bright_magenta, bold = true },

    MiniIndentscopeSymbol    = { fg = c.bright_magenta },
    MiniIndentscopeSymbolOff = { fg = c.bg2 },

    MiniFilesBorder         = { fg = c.border, bg = c.bg1 },
    MiniFilesBorderModified = { fg = c.warn, bg = c.bg1 },
    MiniFilesCursorLine     = { bg = c.bg2 },
    MiniFilesDirectory      = { fg = c.bright_blue },
    MiniFilesFile           = { fg = c.fg0 },
    MiniFilesNormal         = { fg = c.fg0, bg = c.bg1 },
    MiniFilesTitle          = { fg = c.bright_magenta, bold = true },
    MiniFilesTitleFocused   = { fg = c.bright_magenta, bold = true },

    MiniPickBorder        = { fg = c.border, bg = c.bg1 },
    MiniPickBorderBusy    = { fg = c.warn, bg = c.bg1 },
    MiniPickBorderText    = { fg = c.bright_magenta, bg = c.bg1 },
    MiniPickCursor        = { bg = c.bg2 },
    MiniPickIconDirectory = { fg = c.bright_blue },
    MiniPickIconFile      = { fg = c.fg0 },
    MiniPickHeader        = { fg = c.bright_magenta },
    MiniPickMatchCurrent  = { bg = c.bg2 },
    MiniPickMatchMarked   = { bg = c.bg2, bold = true },
    MiniPickMatchRanges   = { fg = c.bright_magenta, bold = true },
    MiniPickNormal        = { fg = c.fg0, bg = c.bg1 },
    MiniPickPreviewLine   = { bg = c.bg2 },
    MiniPickPreviewRegion = { bg = c.bg2 },
    MiniPickPrompt        = { fg = c.bg0, bg = c.bright_magenta },

    MiniHipatternsFixme = { fg = c.bg0, bg = c.error, bold = true },
    MiniHipatternsHack  = { fg = c.bg0, bg = c.warn, bold = true },
    MiniHipatternsNote  = { fg = c.bg0, bg = c.info, bold = true },
    MiniHipatternsTodo  = { fg = c.bg0, bg = c.hint, bold = true },

    MiniIconsAzure  = { fg = c.bright_blue },
    MiniIconsBlue   = { fg = c.bright_blue },
    MiniIconsCyan   = { fg = c.bright_magenta },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsGrey   = { fg = c.fg_dim },
    MiniIconsOrange = { fg = c.bright_orange },
    MiniIconsPurple = { fg = c.bright_magenta },
    MiniIconsRed    = { fg = c.red },
    MiniIconsYellow = { fg = c.yellow },

    ------------------------------------------------------------------
    -- snacks.nvim
    ------------------------------------------------------------------
    SnacksNormal     = { link = "NormalFloat" },
    SnacksWinBar     = { fg = c.fg1, bg = c.bg1, bold = true },
    SnacksWinBarNC   = { fg = c.fg_dim, bg = c.bg1 },
    SnacksBackdrop   = { bg = c.bg0, blend = 50 },
    SnacksNormalNC   = { fg = c.fg0, bg = c.bg1 },
    SnacksNotifierInfo  = { fg = c.info },
    SnacksNotifierWarn  = { fg = c.warn },
    SnacksNotifierError = { fg = c.error },
    SnacksNotifierDebug = { fg = c.fg_dim },
    SnacksNotifierTrace = { fg = c.bright_magenta },
    SnacksNotifierBorderInfo  = { fg = c.info },
    SnacksNotifierBorderWarn  = { fg = c.warn },
    SnacksNotifierBorderError = { fg = c.error },
    SnacksNotifierBorderDebug = { fg = c.fg_dim },
    SnacksNotifierBorderTrace = { fg = c.bright_magenta },
    SnacksNotifierIconInfo  = { fg = c.info },
    SnacksNotifierIconWarn  = { fg = c.warn },
    SnacksNotifierIconError = { fg = c.error },
    SnacksNotifierIconDebug = { fg = c.fg_dim },
    SnacksNotifierIconTrace = { fg = c.bright_magenta },
    SnacksNotifierFooterInfo  = { fg = c.info },
    SnacksNotifierFooterWarn  = { fg = c.warn },
    SnacksNotifierFooterError = { fg = c.error },
    SnacksNotifierFooterDebug = { fg = c.fg_dim },
    SnacksNotifierFooterTrace = { fg = c.bright_magenta },

    SnacksDashboardHeader   = { fg = c.bright_magenta, bold = true },
    SnacksDashboardIcon     = { fg = c.bright_magenta },
    SnacksDashboardDesc     = { fg = c.fg0 },
    SnacksDashboardFile     = { fg = c.bright_blue },
    SnacksDashboardDir      = { fg = c.fg_dim },
    SnacksDashboardFooter   = { fg = c.comment, italic = true },
    SnacksDashboardKey      = { fg = c.bright_magenta, bold = true },
    SnacksDashboardTitle    = { fg = c.bright_magenta, bold = true },
    SnacksDashboardTerminal = { fg = c.fg0, bg = c.bg1 },

    SnacksPicker          = { fg = c.fg0, bg = c.bg1 },
    SnacksPickerBorder    = { fg = c.border, bg = c.bg1 },
    SnacksPickerTitle     = { fg = c.bright_magenta, bold = true },
    SnacksPickerFooter    = { fg = c.fg_dim },
    SnacksPickerInput     = { fg = c.fg0, bg = c.bg1 },
    SnacksPickerInputBorder = { fg = c.border, bg = c.bg1 },
    SnacksPickerInputTitle  = { fg = c.bright_magenta, bold = true },
    SnacksPickerList      = { fg = c.fg0, bg = c.bg1 },
    SnacksPickerListBorder = { fg = c.border, bg = c.bg1 },
    SnacksPickerListTitle  = { fg = c.bright_magenta, bold = true },
    SnacksPickerCursorLine = { bg = c.bg2 },
    SnacksPickerMatch     = { fg = c.bright_magenta, bold = true },
    SnacksPickerDir       = { fg = c.fg_dim },
    SnacksPickerFile      = { fg = c.bright_blue },
    SnacksPickerIcon      = { fg = c.bright_magenta },
    SnacksPickerSelected  = { fg = c.bright_magenta, bold = true },
    SnacksPickerTree      = { fg = c.bg2 },

    SnacksIndent        = { fg = c.bg2 },
    SnacksIndentScope   = { fg = c.bright_magenta },
    SnacksIndentChunk   = { fg = c.bg2 },

    SnacksZenIcon       = { fg = c.bright_magenta },
    SnacksZenBackdrop   = { bg = c.bg0, blend = 50 },

    SnacksScratch       = { link = "NormalFloat" },
    SnacksScratchBorder = { link = "FloatBorder" },
    SnacksScratchTitle  = { fg = c.bright_magenta, bold = true },

    SnacksImage          = { fg = c.bright_magenta },
    SnacksImageBorder    = { fg = c.border, bg = c.bg1 },

    SnacksProfilerIconInfo = { fg = c.info },
    SnacksProfilerBadgeInfo = { fg = c.bg0, bg = c.info, bold = true },
    SnacksProfilerIconTrace = { fg = c.bright_magenta },
    SnacksProfilerBadgeTrace = { fg = c.bg0, bg = c.bright_magenta, bold = true },

    SnacksTerminal        = { fg = c.fg0, bg = c.bg1 },
    SnacksTerminalBorder  = { fg = c.border, bg = c.bg1 },
    SnacksTerminalTitle   = { fg = c.bright_magenta, bold = true },
    SnacksTerminalWinBar  = { fg = c.fg1, bg = c.bg1, bold = true },
    SnacksTerminalWinBarNC = { fg = c.fg_dim, bg = c.bg1 },

    ------------------------------------------------------------------
    -- sniprun
    ------------------------------------------------------------------
    SniprunVirtualTextOk  = { fg = c.bg0, bg = c.bright_magenta },
    SniprunVirtualTextErr = { fg = c.bg0, bg = c.error },
    SniprunFloatingWinOk  = { fg = c.bright_magenta },
    SniprunFloatingWinErr = { fg = c.error },
    SniprunFloatingWinBg  = { bg = c.bg1 },

    ------------------------------------------------------------------
    -- undotree
    ------------------------------------------------------------------
    UndotreeSavedBig  = { fg = c.bg0, bg = c.bright_yellow, bold = true },
    UndotreeNode      = { fg = c.fg0 },
    UndotreeNodeCurrent = { fg = c.bg0, bg = c.bright_magenta, bold = true },
    UndotreeCurrent   = { fg = c.bright_magenta, bold = true },
    UndotreeSeq       = { fg = c.fg_dim },
    UndotreeTimeStamp = { fg = c.comment, italic = true },
    UndotreeDiffAdded = { fg = c.diff_add },
    UndotreeDiffRemoved = { fg = c.diff_delete },
    UndotreeDiffChanged = { fg = c.diff_change },

    ------------------------------------------------------------------
    -- which-key
    ------------------------------------------------------------------
    WhichKey         = { fg = c.bright_magenta, bold = true },
    WhichKeyGroup    = { fg = c.bright_blue },
    WhichKeyDesc     = { fg = c.fg0 },
    WhichKeySeperator = { fg = c.fg_dim },
    WhichKeySeparator = { link = "WhichKeySeperator" },
    WhichKeyFloat    = { bg = c.bg1 },
    WhichKeyBorder   = { fg = c.border, bg = c.bg1 },
    WhichKeyValue    = { fg = c.fg_dim },

    ------------------------------------------------------------------
    -- colorizer
    ------------------------------------------------------------------
    ColorColumn      = { bg = c.cursorline },
    colorizerColor   = { fg = c.bright_magenta },
    colorizerPreview = { fg = c.bright_magenta, italic = true },

    ------------------------------------------------------------------
    -- calcium
    ------------------------------------------------------------------
    CalciumNormal      = { link = "NormalFloat" },
    CalciumBorder      = { link = "FloatBorder" },
    CalciumTitle       = { fg = c.bright_magenta, bold = true },
    CalciumSelected    = { fg = c.bright_magenta, bold = true },
    CalciumUnselected  = { fg = c.fg_dim },
    CalciumDim         = { fg = c.comment },

    ------------------------------------------------------------------
    -- vimwiki
    ------------------------------------------------------------------
    VimwikiLink         = { fg = c.bright_blue, underline = true },
    VimwikiHeader1      = { fg = c.bright_magenta, bold = true },
    VimwikiHeader2      = { fg = c.bright_blue, bold = true },
    VimwikiHeader3      = { fg = c.bright_magenta, bold = true },
    VimwikiHeader4      = { fg = c.green, bold = true },
    VimwikiHeader5      = { fg = c.yellow, bold = true },
    VimwikiHeader6      = { fg = c.red, bold = true },
    VimwikiHeaderChar   = { fg = c.fg_dim },
    VimwikiList         = { fg = c.bright_magenta },
    VimwikiListTodo     = { fg = c.bright_yellow },
    VimwikiCheckBoxDone = { fg = c.green },
    VimwikiCode         = { fg = c.green, bg = c.bg1 },
    VimwikiWeblink1     = { fg = c.bright_blue, underline = true },
    VimwikiTag          = { fg = c.bright_magenta },

    ------------------------------------------------------------------
    -- git signs
    ------------------------------------------------------------------
    GitSignsAdd    = { fg = c.diff_add },
    GitSignsChange = { fg = c.diff_change },
    GitSignsDelete = { fg = c.diff_delete },
    GitSignsAddLn  = { bg = c.bg1 },
    GitSignsChangeLn = { bg = c.bg1 },
    GitSignsDeleteLn = { bg = c.bg1 },

    GitGutterAdd    = { fg = c.diff_add },
    GitGutterChange = { fg = c.diff_change },
    GitGutterDelete = { fg = c.diff_delete },

    ------------------------------------------------------------------
    -- nvim-cmp (fallback if not using blink)
    ------------------------------------------------------------------
    CmpDocumentation         = { link = "NormalFloat" },
    CmpDocumentationBorder   = { link = "FloatBorder" },
    CmpItemAbbr              = { fg = c.fg0 },
    CmpItemAbbrDeprecated    = { fg = c.fg_dim, strikethrough = true },
    CmpItemAbbrMatch         = { fg = c.bright_magenta, bold = true },
    CmpItemAbbrMatchFuzzy    = { fg = c.bright_magenta, bold = true },
    CmpItemKind              = { fg = c.bright_blue },
    CmpItemMenu              = { fg = c.comment },

    ------------------------------------------------------------------
    -- telescope (fallback)
    ------------------------------------------------------------------
    TelescopeNormal         = { link = "NormalFloat" },
    TelescopeBorder         = { link = "FloatBorder" },
    TelescopeTitle          = { fg = c.bright_magenta, bold = true },
    TelescopePromptTitle    = { fg = c.bright_magenta, bold = true },
    TelescopeResultsTitle   = { fg = c.bright_blue, bold = true },
    TelescopeSelection      = { bg = c.bg2 },
    TelescopeSelectionCaret = { fg = c.bright_magenta, bg = c.bg2 },
    TelescopeMatching       = { fg = c.bright_magenta, bold = true },

    ------------------------------------------------------------------
    -- misc common
    ------------------------------------------------------------------
    NeogitBranch        = { fg = c.bright_magenta },
    NeogitRemote        = { fg = c.bright_blue },
    NeogitHunkHeader    = { fg = c.fg0, bg = c.bg1 },
    NeogitHunkHeaderHighlight = { fg = c.bright_magenta, bg = c.bg2 },

    NotifyERRORBorder = { fg = c.error },
    NotifyWARNBorder  = { fg = c.warn },
    NotifyINFOBorder  = { fg = c.info },
    NotifyDEBUGBorder = { fg = c.fg_dim },
    NotifyTRACEBorder = { fg = c.bright_magenta },
    NotifyERRORIcon   = { fg = c.error },
    NotifyWARNIcon    = { fg = c.warn },
    NotifyINFOIcon    = { fg = c.info },
    NotifyDEBUGIcon   = { fg = c.fg_dim },
    NotifyTRACEIcon   = { fg = c.bright_magenta },
    NotifyERRORTitle  = { fg = c.error },
    NotifyWARNTitle   = { fg = c.warn },
    NotifyINFOTitle   = { fg = c.info },
    NotifyDEBUGTitle  = { fg = c.fg_dim },
    NotifyTRACETitle  = { fg = c.bright_magenta },

    IndentBlanklineChar        = { fg = c.bg2 },
    IndentBlanklineSpaceChar   = { fg = c.bg2 },
    IndentBlanklineContextChar = { fg = c.bright_magenta },
    IblIndent                  = { fg = c.bg2 },
    IblScope                   = { fg = c.bright_magenta },
  }
end

return M

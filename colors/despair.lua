-- Despair Theme for Neovim
-- Author: bnema
-- A comprehensive dark theme built around muted grays and subtle teals
-- Based on the Despair Design System v1.0

-- Clear existing colorscheme and set background
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "despair"
vim.o.background = "dark"

-- Despair Color Palette - Based on Design System v1.0
local colors = {
  -- Core backgrounds (5 nuances)
  bg = "#08090a",              -- Void Black - Primary editor/terminal background
  bg_alt = "#0f1011",          -- Shadow Gray - Sidebar, borders, subtle dividers
  bg_float = "#181a1b",        -- Deep Charcoal - Floating panels, input fields
  bg_highlight = "#222823",    -- Eerie Black - Active tab background, highlighted sections
  bg_card = "#2d3236",         -- Slate Gray - Hover states, card backgrounds

  -- Foreground colors (text hierarchy)
  fg = "#f4f7f5",              -- Seasalt - Main body text, active UI elements
  fg_alt = "#fefefe",          -- Pure White - Emphasized text, selected items, function names
  fg_secondary = "#b8bbbf",    -- Light Gray - Secondary information, labels
  fg_tertiary = "#8b8f94",     -- Silver Gray - Tertiary text, inactive elements
  fg_dim = "#6a6e73",          -- Dim Gray - Comments, hints, placeholders

  -- Teal spectrum (5 nuances - primary accent colors)
  teal_bright = "#7db5b5",     -- Bright Teal - Keywords, links, active indicators, focus states
  teal_slate = "#5a8585",      -- Slate Teal - Types, classes, buttons, active selections
  teal_deep = "#3d6666",       -- Deep Teal - Numbers, constants, secondary elements
  teal_dark = "#2a4a4a",       -- Dark Teal - Selections, borders, hover states
  teal_muted = "#1f3636",      -- Muted Teal - Subtle highlights, inactive states

  -- Neutral grays (hierarchy spectrum)
  gray_rose = "#a7a2a9",       -- Rose Quartz - Selected text, muted accents (strings)
  gray_storm = "#757982",      -- Storm Gray - Borders, separators
  gray_davys = "#575a5e",      -- Davys Gray - Inactive borders, subtle UI elements
  gray_graphite = "#3f4245",   -- Graphite - Very subtle dividers, line numbers

  -- Semantic colors
  error = "#d96c75",           -- Soft Red - Errors, deletions, destructive actions
  warn = "#d9a66c",            -- Muted Orange - Warnings, modified states
  info = "#6c9bd9",            -- Info Blue - Information states, hints
  success = "#7db5b5",         -- Success Teal - Git additions, success states

  -- Border colors
  border_subtle = "#0f1011",   -- Subtle Border - Inactive borders
  border_medium = "#575a5e",   -- Medium Border - Standard borders
  border_active = "#5a8585",   -- Active Border - Active pane borders
  border_focus = "#7db5b5",    -- Focus Border - Focus indicators
}

-- Helper function to set highlights
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- EDITOR UI
-- ============================================================================

-- Basic editor
hl("Normal", { fg = colors.fg, bg = colors.bg })  -- Main body text in Seasalt
hl("NormalFloat", { fg = colors.fg, bg = colors.bg_float })
hl("NormalNC", { fg = colors.fg_secondary, bg = colors.bg }) -- Inactive windows slightly dimmer
hl("FloatBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent background removes margin
hl("FloatTitle", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })

-- Cursor and columns
hl("Cursor", { fg = colors.bg, bg = colors.teal_slate })
hl("lCursor", { link = "Cursor" })
hl("iCursor", { link = "Cursor" })
hl("vCursor", { link = "Cursor" })
hl("CursorLine", { bg = colors.bg_float })
hl("CursorColumn", { bg = colors.bg_float })
hl("ColorColumn", { bg = colors.bg_float })

-- Line numbers and signs
hl("LineNr", { fg = colors.gray_graphite })
hl("CursorLineNr", { fg = colors.teal_bright, bold = true })
hl("SignColumn", { fg = colors.gray_graphite, bg = colors.bg })

-- Folds
hl("Folded", { fg = colors.fg_dim, bg = colors.bg_highlight, italic = true })
hl("FoldColumn", { fg = colors.gray_graphite, bg = colors.bg })

-- Selection and search
hl("Visual", { bg = colors.teal_dark })
hl("VisualNOS", { bg = colors.teal_dark })
hl("Search", { bg = colors.teal_dark, fg = colors.fg_alt })
hl("IncSearch", { fg = colors.bg, bg = colors.teal_bright, bold = true })
hl("CurSearch", { link = "IncSearch" })
hl("Substitute", { fg = colors.bg, bg = colors.error })

-- Splits and windows
hl("VertSplit", { fg = colors.bg_alt })
hl("WinSeparator", { fg = colors.bg_alt })
hl("WinBar", { fg = colors.fg_secondary, bg = colors.bg })
hl("WinBarNC", { fg = colors.fg_tertiary, bg = colors.bg_alt })

-- Status and tab lines
hl("StatusLine", { fg = colors.fg, bg = colors.bg_float })
hl("StatusLineNC", { fg = colors.fg_dim, bg = colors.bg_float })
hl("TabLine", { fg = colors.fg_dim, bg = colors.bg })
hl("TabLineFill", { bg = colors.bg })
hl("TabLineSel", { fg = colors.fg_alt, bg = colors.bg_highlight, bold = true })

-- Popup menu
hl("Pmenu", { fg = colors.fg, bg = colors.bg_float })
hl("PmenuSel", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })
hl("PmenuSbar", { bg = colors.gray_graphite })
hl("PmenuThumb", { bg = colors.teal_bright })

-- Messages and command line
hl("ErrorMsg", { fg = colors.error, bold = true })
hl("WarningMsg", { fg = colors.warn, bold = true })
hl("ModeMsg", { fg = colors.teal_bright })
hl("MoreMsg", { fg = colors.teal_bright, bold = true })
hl("Question", { fg = colors.teal_bright, bold = true })
hl("Title", { fg = colors.teal_bright, bold = true })

-- Misc UI
hl("Directory", { fg = colors.teal_bright, bold = true })
hl("WildMenu", { fg = colors.bg, bg = colors.teal_slate, bold = true })
hl("MatchParen", { fg = colors.teal_bright, bg = colors.bg_card, bold = true })
hl("Conceal", { fg = colors.teal_slate })
hl("NonText", { fg = colors.bg_alt })
hl("SpecialKey", { fg = colors.fg_tertiary })
hl("EndOfBuffer", { fg = colors.bg_alt })
hl("Whitespace", { fg = colors.bg_alt })
hl("QuickFixLine", { bg = colors.bg_highlight })

-- ============================================================================
-- SYNTAX HIGHLIGHTING
-- ============================================================================

hl("Comment", { fg = colors.fg_dim, italic = true })
hl("SpecialComment", { fg = colors.fg_dim, italic = true, bold = true })

-- Constants
hl("Constant", { fg = colors.teal_deep })
hl("String", { fg = colors.gray_rose })
hl("Character", { fg = colors.gray_rose })
hl("Number", { fg = colors.teal_deep })
hl("Boolean", { fg = colors.teal_bright })
hl("Float", { fg = colors.teal_deep })

-- Identifiers
hl("Identifier", { fg = colors.fg })  -- Regular variables in Seasalt
hl("Function", { fg = colors.teal_slate, bold = true })  -- Functions in Slate Teal, bold

-- Statements
hl("Statement", { fg = colors.teal_bright })
hl("Conditional", { fg = colors.teal_bright })
hl("Repeat", { fg = colors.teal_bright })
hl("Label", { fg = colors.teal_bright })
hl("Operator", { fg = colors.teal_slate })  -- Operators in Slate Teal
hl("Keyword", { fg = colors.teal_bright, italic = true })
hl("Exception", { fg = colors.error })

-- PreProc
hl("PreProc", { fg = colors.teal_bright })
hl("Include", { fg = colors.teal_bright })
hl("Define", { fg = colors.teal_bright })
hl("Macro", { fg = colors.teal_bright })
hl("PreCondit", { fg = colors.teal_bright })

-- Types
hl("Type", { fg = colors.teal_slate })
hl("StorageClass", { fg = colors.teal_bright })
hl("Structure", { fg = colors.teal_slate })
hl("Typedef", { fg = colors.teal_slate })

-- Special
hl("Special", { fg = colors.teal_slate })
hl("SpecialChar", { fg = colors.teal_deep })
hl("Tag", { fg = colors.teal_bright })
hl("Delimiter", { fg = colors.teal_deep })  -- Delimiters in Deep Teal
hl("Debug", { fg = colors.error })

-- Other
hl("Underlined", { fg = colors.teal_bright, underline = true })
hl("Error", { fg = colors.error, bold = true })
hl("Todo", { fg = colors.warn, bg = colors.bg_highlight, bold = true })

-- ============================================================================
-- SPELL CHECKING
-- ============================================================================

hl("SpellBad", { fg = colors.error, undercurl = true, sp = colors.error })
hl("SpellCap", { fg = colors.warn, undercurl = true, sp = colors.warn })
hl("SpellRare", { fg = colors.info, undercurl = true, sp = colors.info })
hl("SpellLocal", { fg = colors.fg_dim, undercurl = true, sp = colors.fg_dim })

-- ============================================================================
-- DIFF
-- ============================================================================

hl("DiffAdd", { fg = colors.success, bg = colors.bg_highlight })
hl("DiffChange", { fg = colors.warn, bg = colors.bg_highlight })
hl("DiffDelete", { fg = colors.error, bg = colors.bg_highlight })
hl("DiffText", { fg = colors.teal_slate, bg = colors.teal_dark, bold = true })

hl("diffAdded", { link = "DiffAdd" })
hl("diffRemoved", { link = "DiffDelete" })
hl("diffChanged", { link = "DiffChange" })
hl("diffFile", { fg = colors.warn })
hl("diffNewFile", { fg = colors.success })
hl("diffOldFile", { fg = colors.error })
hl("diffLine", { fg = colors.info })
hl("diffIndexLine", { fg = colors.teal_slate })

-- ============================================================================
-- LSP
-- ============================================================================

hl("LspReferenceText", { bg = colors.teal_dark })
hl("LspReferenceRead", { bg = colors.teal_dark })
hl("LspReferenceWrite", { bg = colors.teal_dark, bold = true })
hl("LspInlayHint", { fg = colors.fg_dim, bg = colors.bg_highlight })
hl("LspCodeLens", { fg = colors.fg_dim, italic = true })
hl("LspCodeLensSign", { fg = colors.fg_dim })
hl("LspSignatureActiveParameter", { fg = colors.teal_bright, bold = true })

-- ============================================================================
-- DIAGNOSTICS
-- ============================================================================

hl("DiagnosticError", { fg = colors.error })
hl("DiagnosticWarn", { fg = colors.warn })
hl("DiagnosticInfo", { fg = colors.info })
hl("DiagnosticHint", { fg = colors.fg_dim })
hl("DiagnosticOk", { fg = colors.success })

hl("DiagnosticSignError", { fg = colors.error, bg = colors.bg })
hl("DiagnosticSignWarn", { fg = colors.warn, bg = colors.bg })
hl("DiagnosticSignInfo", { fg = colors.info, bg = colors.bg })
hl("DiagnosticSignHint", { fg = colors.fg_dim, bg = colors.bg })
hl("DiagnosticSignOk", { fg = colors.success, bg = colors.bg })

hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warn })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.fg_dim })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = colors.success })

hl("DiagnosticVirtualTextError", { fg = colors.error, bg = colors.bg_highlight })
hl("DiagnosticVirtualTextWarn", { fg = colors.warn, bg = colors.bg_highlight })
hl("DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.bg_highlight })
hl("DiagnosticVirtualTextHint", { fg = colors.fg_dim, bg = colors.bg_highlight })
hl("DiagnosticVirtualTextOk", { fg = colors.success, bg = colors.bg_highlight })

hl("DiagnosticFloatingError", { fg = colors.error })
hl("DiagnosticFloatingWarn", { fg = colors.warn })
hl("DiagnosticFloatingInfo", { fg = colors.info })
hl("DiagnosticFloatingHint", { fg = colors.fg_dim })
hl("DiagnosticFloatingOk", { fg = colors.success })

hl("DiagnosticDeprecated", { strikethrough = true, sp = colors.fg_dim })

-- ============================================================================
-- TREE-SITTER
-- ============================================================================

-- Comments
hl("@comment", { link = "Comment" })
hl("@comment.note", { fg = colors.info, bold = true })
hl("@comment.warning", { fg = colors.warn, bold = true })
hl("@comment.error", { fg = colors.error, bold = true })
hl("@comment.todo", { link = "Todo" })

-- Constants (nuanced hierarchy)
hl("@constant", { fg = colors.teal_deep })  -- Regular constants in Deep Teal
hl("@constant.builtin", { fg = colors.teal_bright })  -- Built-in constants brighter
hl("@constant.macro", { link = "Macro" })

-- Strings
hl("@string", { link = "String" })
hl("@string.escape", { fg = colors.teal_bright })  -- Escape sequences in Bright Teal
hl("@string.regexp", { fg = colors.teal_deep })
hl("@string.regex", { fg = colors.teal_deep })
hl("@string.special", { fg = colors.teal_bright })  -- Format strings (%s, %w, etc.) in Bright Teal
hl("@string.special.path", { fg = colors.teal_bright, underline = true })
hl("@string.special.symbol", { fg = colors.teal_slate })
hl("@string.special.url", { fg = colors.teal_bright, underline = true })

-- Characters and numbers
hl("@character", { link = "Character" })
hl("@character.special", { link = "SpecialChar" })
hl("@number", { link = "Number" })
hl("@number.float", { link = "Float" })
hl("@float", { link = "Float" })
hl("@boolean", { link = "Boolean" })

-- Functions (balanced hierarchy - definitions stand out, calls are subtle)
hl("@function", { fg = colors.fg_alt, bold = true })  -- Function definitions in Pure White, bold
hl("@function.builtin", { fg = colors.teal_bright, bold = true })  -- Built-ins in Bright Teal
hl("@function.call", { fg = colors.teal_slate })  -- Function calls in Slate Teal
hl("@function.macro", { link = "Macro" })
hl("@function.method", { fg = colors.fg_alt, bold = true })  -- Method definitions in Pure White
hl("@method", { fg = colors.fg_alt, bold = true })
hl("@method.call", { fg = colors.teal_slate })  -- Method calls in Slate Teal
hl("@constructor", { fg = colors.teal_slate, bold = true })
hl("@parameter", { fg = colors.fg })  -- Parameters in Seasalt

-- Keywords
hl("@keyword", { link = "Keyword" })
hl("@keyword.conditional", { link = "Conditional" })
hl("@keyword.repeat", { link = "Repeat" })
hl("@keyword.return", { fg = colors.teal_bright, italic = true })
hl("@keyword.function", { fg = colors.teal_bright, italic = true })
hl("@keyword.operator", { fg = colors.teal_slate })
hl("@keyword.import", { link = "Include" })
hl("@keyword.exception", { link = "Exception" })
hl("@keyword.debug", { link = "Debug" })
hl("@keyword.directive", { link = "PreProc" })
hl("@keyword.directive.define", { link = "Define" })
hl("@keyword.storage", { link = "StorageClass" })

-- Other keywords
hl("@conditional", { link = "Conditional" })
hl("@repeat", { link = "Repeat" })
hl("@label", { link = "Label" })
hl("@operator", { link = "Operator" })
hl("@exception", { link = "Exception" })
hl("@include", { link = "Include" })
hl("@debug", { link = "Debug" })

-- Types (using different teal shades for hierarchy)
hl("@type", { fg = colors.teal_slate })  -- User types in Slate Teal
hl("@type.builtin", { fg = colors.teal_bright })  -- Built-in types brighter
hl("@type.definition", { fg = colors.fg_alt, bold = true })  -- Type definitions in Pure White
hl("@type.qualifier", { fg = colors.teal_deep })  -- Qualifiers in Deep Teal
hl("@storageclass", { link = "StorageClass" })
hl("@attribute", { fg = colors.teal_bright })
hl("@structure", { link = "Structure" })

-- Variables
hl("@variable", { fg = colors.fg })  -- Regular variables in Seasalt
hl("@variable.builtin", { fg = colors.teal_slate })  -- Built-ins in Slate Teal
hl("@variable.parameter", { fg = colors.fg })  -- Parameters in Seasalt
hl("@variable.member", { fg = colors.fg_secondary })  -- Members/properties in Light Gray
hl("@field", { fg = colors.fg_secondary })  -- Fields in Light Gray
hl("@property", { fg = colors.fg_secondary })  -- Properties in Light Gray

-- Namespaces and modules (important structural elements)
hl("@namespace", { fg = colors.teal_bright })  -- Namespaces in Bright Teal
hl("@module", { fg = colors.teal_bright })  -- Modules in Bright Teal
hl("@symbol", { fg = colors.teal_deep })

-- Punctuation (using teal nuances for visual hierarchy)
hl("@punctuation.delimiter", { fg = colors.teal_deep })  -- Delimiters in Deep Teal
hl("@punctuation.bracket", { fg = colors.fg_secondary })  -- Brackets in Light Gray
hl("@punctuation.special", { fg = colors.teal_bright })  -- Special punct in Bright Teal
hl("@punctuation", { fg = colors.teal_deep })

-- Tags (HTML/XML)
hl("@tag", { link = "Tag" })
hl("@tag.attribute", { fg = colors.teal_slate })
hl("@tag.delimiter", { fg = colors.fg_secondary })

-- Markup (Markdown, etc.)
hl("@markup", { fg = colors.fg })
hl("@markup.strong", { fg = colors.fg_alt, bold = true })
hl("@markup.italic", { fg = colors.fg, italic = true })
hl("@markup.underline", { underline = true })
hl("@markup.strikethrough", { strikethrough = true })
hl("@markup.heading", { fg = colors.teal_bright, bold = true })
hl("@markup.raw", { fg = colors.gray_rose })
hl("@markup.math", { fg = colors.teal_deep })
hl("@markup.environment", { fg = colors.teal_slate })
hl("@markup.environment.name", { fg = colors.teal_slate })
hl("@markup.link", { fg = colors.teal_bright, underline = true })
hl("@markup.link.label", { fg = colors.teal_slate })
hl("@markup.list", { fg = colors.teal_slate })
hl("@markup.list.checked", { fg = colors.success })
hl("@markup.list.unchecked", { fg = colors.fg_dim })

-- Diff
hl("@diff.plus", { link = "DiffAdd" })
hl("@diff.minus", { link = "DiffDelete" })
hl("@diff.delta", { link = "DiffChange" })

-- Text (legacy)
hl("@text", { fg = colors.fg })
hl("@text.strong", { bold = true })
hl("@text.emphasis", { italic = true })
hl("@text.underline", { underline = true })
hl("@text.strike", { strikethrough = true })
hl("@text.title", { link = "Title" })
hl("@text.literal", { fg = colors.gray_rose })
hl("@text.uri", { fg = colors.teal_bright, underline = true })
hl("@text.math", { fg = colors.teal_deep })
hl("@text.environment", { fg = colors.teal_slate })
hl("@text.environment.name", { fg = colors.teal_slate })
hl("@text.reference", { fg = colors.teal_deep })
hl("@text.todo", { link = "Todo" })
hl("@text.todo.checked", { fg = colors.success })
hl("@text.todo.unchecked", { fg = colors.fg_dim })
hl("@text.note", { fg = colors.info, bold = true })
hl("@text.note.comment", { fg = colors.info, bold = true })
hl("@text.warning", { fg = colors.warn, bold = true })
hl("@text.danger", { fg = colors.error, bold = true })
hl("@text.danger.comment", { fg = colors.error, bold = true })
hl("@text.diff.add", { link = "diffAdded" })
hl("@text.diff.delete", { link = "diffRemoved" })

-- Other
hl("@none", { bg = "NONE", fg = "NONE" })
hl("@preproc", { link = "PreProc" })
hl("@define", { link = "Define" })
hl("@macro", { link = "Macro" })

-- ============================================================================
-- LSP SEMANTIC TOKENS
-- ============================================================================

-- LSP Semantic Tokens (use {} to let treesitter handle the highlighting)
hl("@lsp.type.class", { link = "@type" })
hl("@lsp.type.comment", { link = "@comment" })
hl("@lsp.type.decorator", { link = "@macro" })
hl("@lsp.type.enum", { link = "@type" })
hl("@lsp.type.enumMember", { link = "@constant" })
hl("@lsp.type.function", {})  -- Use treesitter styles
hl("@lsp.type.interface", { link = "@constructor" })
hl("@lsp.type.macro", { link = "@macro" })
hl("@lsp.type.method", {})  -- Use treesitter styles
hl("@lsp.type.namespace", { link = "@namespace" })
hl("@lsp.type.parameter", { link = "@parameter" })
hl("@lsp.type.property", {})  -- Use treesitter styles
hl("@lsp.type.struct", { link = "@type" })
hl("@lsp.type.type", { link = "@type" })
hl("@lsp.type.typeParameter", { link = "@type.definition" })
hl("@lsp.type.variable", {})  -- Use treesitter styles

-- LSP Type Modifiers
hl("@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
hl("@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
hl("@lsp.typemod.variable.callable", { link = "@function" })
hl("@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
hl("@lsp.typemod.variable.static", { link = "@constant" })

-- ============================================================================
-- GIT SIGNS
-- ============================================================================

hl("GitSignsAdd", { fg = colors.success, bg = colors.bg })
hl("GitSignsChange", { fg = colors.warn, bg = colors.bg })
hl("GitSignsDelete", { fg = colors.error, bg = colors.bg })

-- ============================================================================
-- FZF-LUA
-- ============================================================================

-- Main fzf window
hl("FzfLuaNormal", { fg = colors.fg_secondary, bg = colors.bg_float })
hl("FzfLuaBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border background
hl("FzfLuaTitle", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })
hl("FzfLuaTitleFlags", { fg = colors.fg_dim, bg = colors.bg_highlight })
hl("FzfLuaBackdrop", { bg = colors.bg_float })  -- Match window background to remove dark margin

-- Preview window
hl("FzfLuaPreviewNormal", { fg = colors.fg_secondary, bg = colors.bg_float })
hl("FzfLuaPreviewBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border background
hl("FzfLuaPreviewTitle", { fg = colors.fg_alt, bg = colors.teal_bright, bold = true })
hl("FzfLuaCursor", { link = "Cursor" })
hl("FzfLuaCursorLine", { bg = colors.bg_highlight })
hl("FzfLuaCursorLineNr", { fg = colors.teal_bright, bold = true })
hl("FzfLuaSearch", { link = "IncSearch" })

-- Scrollbar
hl("FzfLuaScrollBorderEmpty", { fg = colors.gray_graphite, bg = colors.bg_float })
hl("FzfLuaScrollBorderFull", { fg = colors.teal_slate, bg = colors.bg_float })
hl("FzfLuaScrollFloatEmpty", { link = "PmenuSbar" })
hl("FzfLuaScrollFloatFull", { link = "PmenuThumb" })

-- Help window
hl("FzfLuaHelpNormal", { fg = colors.fg_secondary, bg = colors.bg_float })
hl("FzfLuaHelpBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border background

-- Headers
hl("FzfLuaHeaderBind", { fg = colors.teal_bright, bold = true })
hl("FzfLuaHeaderText", { fg = colors.fg_secondary })

-- Path components
hl("FzfLuaPathLineNr", { fg = colors.teal_slate })
hl("FzfLuaPathColNr", { fg = colors.teal_deep })
hl("FzfLuaDirIcon", { fg = colors.teal_bright })
hl("FzfLuaDirPart", { fg = colors.fg_dim })
hl("FzfLuaFilePart", { fg = colors.fg_secondary })

-- Buffer components
hl("FzfLuaBufName", { fg = colors.teal_bright })
hl("FzfLuaBufId", { fg = colors.fg_tertiary })
hl("FzfLuaBufNr", { fg = colors.fg_tertiary })
hl("FzfLuaBufLineNr", { fg = colors.gray_graphite })
hl("FzfLuaBufFlagCur", { fg = colors.teal_bright, bold = true })
hl("FzfLuaBufFlagAlt", { fg = colors.teal_slate })

-- Tab components
hl("FzfLuaTabTitle", { fg = colors.teal_bright })
hl("FzfLuaTabMarker", { fg = colors.teal_slate, bold = true })

-- Live query
hl("FzfLuaLivePrompt", { fg = colors.teal_bright, bold = true })
hl("FzfLuaLiveSym", { fg = colors.teal_slate })

-- fzf's internal highlights
hl("FzfLuaFzfNormal", { fg = colors.fg_secondary, bg = colors.bg_float })
hl("FzfLuaFzfCursorLine", { fg = colors.fg_alt, bg = colors.teal_dark, bold = true })
hl("FzfLuaFzfMatch", { fg = colors.teal_bright, bold = true })
hl("FzfLuaFzfBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border background
hl("FzfLuaFzfScrollbar", { fg = colors.gray_graphite, bg = "NONE" })
hl("FzfLuaFzfSeparator", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border background
hl("FzfLuaFzfGutter", { bg = colors.bg_float })
hl("FzfLuaFzfHeader", { fg = colors.teal_bright, bold = true })
hl("FzfLuaFzfInfo", { fg = colors.fg_dim })
hl("FzfLuaFzfPointer", { fg = colors.teal_bright, bold = true })
hl("FzfLuaFzfMarker", { fg = colors.success, bold = true })
hl("FzfLuaFzfSpinner", { fg = colors.teal_slate })
hl("FzfLuaFzfPrompt", { fg = colors.teal_bright, bold = true })
hl("FzfLuaFzfQuery", { fg = colors.fg_secondary })

-- ============================================================================
-- TELESCOPE
-- ============================================================================

hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg_float })
hl("TelescopeBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border
hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_float })
hl("TelescopePromptBorder", { fg = colors.teal_slate, bg = "NONE" })  -- Transparent border
hl("TelescopePromptTitle", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })
hl("TelescopePromptPrefix", { fg = colors.teal_bright, bold = true })
hl("TelescopePreviewTitle", { fg = colors.fg_alt, bg = colors.teal_bright, bold = true })
hl("TelescopeResultsTitle", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })
hl("TelescopeSelection", { fg = colors.fg_alt, bg = colors.teal_dark, bold = true })
hl("TelescopeSelectionCaret", { fg = colors.teal_bright, bg = colors.teal_dark, bold = true })
hl("TelescopeMatching", { fg = colors.teal_bright, bold = true })
hl("TelescopeMultiSelection", { fg = colors.fg_dim })

-- ============================================================================
-- NEO-TREE
-- ============================================================================

hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg_alt })
hl("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_alt })
hl("NeoTreeFloatBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border
hl("NeoTreeTitleBar", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })
hl("NeoTreeDirectoryName", { fg = colors.teal_bright, bold = true })
hl("NeoTreeDirectoryIcon", { fg = colors.teal_bright })
hl("NeoTreeFileName", { fg = colors.fg })
hl("NeoTreeFileIcon", { fg = colors.teal_slate })
hl("NeoTreeGitModified", { fg = colors.warn })
hl("NeoTreeGitAdded", { fg = colors.success })
hl("NeoTreeGitDeleted", { fg = colors.error })
hl("NeoTreeGitIgnored", { fg = colors.fg_dim })
hl("NeoTreeGitConflict", { fg = colors.error, bold = true })
hl("NeoTreeGitUntracked", { fg = colors.fg_tertiary })
hl("NeoTreeIndentMarker", { fg = colors.gray_graphite })

-- ============================================================================
-- WHICH-KEY
-- ============================================================================

hl("WhichKey", { fg = colors.teal_bright, bold = true })
hl("WhichKeyGroup", { fg = colors.teal_slate })
hl("WhichKeyDesc", { fg = colors.fg })
hl("WhichKeySeperator", { fg = colors.fg_dim })
hl("WhichKeySeparator", { fg = colors.fg_dim })
hl("WhichKeyFloat", { bg = colors.bg_float })
hl("WhichKeyBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border background
hl("WhichKeyTitle", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })

-- ============================================================================
-- BUFFERLINE
-- ============================================================================

hl("BufferLineBackground", { fg = colors.fg_dim, bg = colors.bg })
hl("BufferLineBufferSelected", { fg = colors.fg_alt, bg = colors.bg_highlight, bold = true })
hl("BufferLineBufferVisible", { fg = colors.fg, bg = colors.bg })
hl("BufferLineCloseButton", { fg = colors.fg_dim, bg = colors.bg })
hl("BufferLineCloseButtonSelected", { fg = colors.error, bg = colors.bg_highlight })
hl("BufferLineCloseButtonVisible", { fg = colors.fg_dim, bg = colors.bg })
hl("BufferLineFill", { bg = colors.bg })
hl("BufferLineIndicatorSelected", { fg = colors.teal_slate, bg = colors.bg_highlight })
hl("BufferLineModified", { fg = colors.warn, bg = colors.bg })
hl("BufferLineModifiedSelected", { fg = colors.warn, bg = colors.bg_highlight })
hl("BufferLineModifiedVisible", { fg = colors.warn, bg = colors.bg })
hl("BufferLineSeparator", { fg = colors.bg_alt, bg = colors.bg })
hl("BufferLineSeparatorSelected", { fg = colors.bg_alt, bg = colors.bg_highlight })
hl("BufferLineSeparatorVisible", { fg = colors.bg_alt, bg = colors.bg })
hl("BufferLineTab", { fg = colors.fg_dim, bg = colors.bg })
hl("BufferLineTabSelected", { fg = colors.fg_alt, bg = colors.bg_highlight, bold = true })
hl("BufferLineTabClose", { fg = colors.error, bg = colors.bg })

-- ============================================================================
-- LUALINE
-- ============================================================================

hl("LualineNormal", { fg = colors.fg, bg = colors.bg_float })
hl("LualineInsert", { fg = colors.bg, bg = colors.success, bold = true })
hl("LualineVisual", { fg = colors.bg, bg = colors.teal_bright, bold = true })  -- Teal instead of orange
hl("LualineReplace", { fg = colors.bg, bg = colors.error, bold = true })
hl("LualineCommand", { fg = colors.bg, bg = colors.teal_slate, bold = true })  -- Darker teal for contrast

-- ============================================================================
-- INDENT BLANKLINE
-- ============================================================================

hl("IndentBlanklineChar", { fg = colors.gray_graphite })
hl("IndentBlanklineContextChar", { fg = colors.teal_slate })
hl("IndentBlanklineContextStart", { sp = colors.teal_slate, underline = true })
hl("IblIndent", { fg = colors.gray_graphite })
hl("IblScope", { fg = colors.teal_slate })

-- ============================================================================
-- COMPLETION (nvim-cmp / blink.cmp)
-- ============================================================================

hl("CmpItemKind", { fg = colors.teal_slate })
hl("CmpItemMenu", { fg = colors.fg_dim })
hl("CmpItemAbbrMatch", { fg = colors.teal_bright, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = colors.teal_bright })
hl("CmpItemAbbrDeprecated", { fg = colors.fg_dim, strikethrough = true })

-- Kind-specific highlights
hl("CmpItemKindText", { fg = colors.fg })
hl("CmpItemKindVariable", { fg = colors.fg })
hl("CmpItemKindMethod", { fg = colors.teal_bright })
hl("CmpItemKindFunction", { fg = colors.teal_bright })
hl("CmpItemKindConstructor", { fg = colors.teal_slate })
hl("CmpItemKindField", { fg = colors.fg_secondary })
hl("CmpItemKindProperty", { fg = colors.fg_secondary })
hl("CmpItemKindClass", { fg = colors.teal_slate })
hl("CmpItemKindInterface", { fg = colors.teal_slate })
hl("CmpItemKindModule", { fg = colors.teal_slate })
hl("CmpItemKindKeyword", { fg = colors.teal_bright })
hl("CmpItemKindSnippet", { fg = colors.success })
hl("CmpItemKindFile", { fg = colors.fg_secondary })
hl("CmpItemKindFolder", { fg = colors.teal_bright })
hl("CmpItemKindConstant", { fg = colors.teal_deep })
hl("CmpItemKindEnum", { fg = colors.teal_slate })
hl("CmpItemKindEnumMember", { fg = colors.teal_deep })
hl("CmpItemKindStruct", { fg = colors.teal_slate })
hl("CmpItemKindValue", { fg = colors.fg })
hl("CmpItemKindOperator", { fg = colors.teal_slate })
hl("CmpItemKindTypeParameter", { fg = colors.teal_slate })

-- Blink.cmp
hl("BlinkCmpLabel", { fg = colors.fg })
hl("BlinkCmpLabelDeprecated", { fg = colors.fg_dim, strikethrough = true })
hl("BlinkCmpLabelMatch", { fg = colors.teal_bright, bold = true })
hl("BlinkCmpLabelDetail", { fg = colors.fg_dim })
hl("BlinkCmpLabelDescription", { fg = colors.fg_dim })
hl("BlinkCmpKindText", { link = "CmpItemKindText" })
hl("BlinkCmpKindVariable", { link = "CmpItemKindVariable" })
hl("BlinkCmpKindMethod", { link = "CmpItemKindMethod" })
hl("BlinkCmpKindFunction", { link = "CmpItemKindFunction" })
hl("BlinkCmpKindConstructor", { link = "CmpItemKindConstructor" })
hl("BlinkCmpKindField", { link = "CmpItemKindField" })
hl("BlinkCmpKindProperty", { link = "CmpItemKindProperty" })
hl("BlinkCmpKindClass", { link = "CmpItemKindClass" })
hl("BlinkCmpKindInterface", { link = "CmpItemKindInterface" })
hl("BlinkCmpKindModule", { link = "CmpItemKindModule" })
hl("BlinkCmpKindKeyword", { link = "CmpItemKindKeyword" })
hl("BlinkCmpKindSnippet", { link = "CmpItemKindSnippet" })
hl("BlinkCmpKindFile", { link = "CmpItemKindFile" })
hl("BlinkCmpKindFolder", { link = "CmpItemKindFolder" })
hl("BlinkCmpKindConstant", { link = "CmpItemKindConstant" })
hl("BlinkCmpKindEnum", { link = "CmpItemKindEnum" })
hl("BlinkCmpKindEnumMember", { link = "CmpItemKindEnumMember" })
hl("BlinkCmpKindStruct", { link = "CmpItemKindStruct" })
hl("BlinkCmpKindValue", { link = "CmpItemKindValue" })
hl("BlinkCmpKindOperator", { link = "CmpItemKindOperator" })
hl("BlinkCmpKindTypeParameter", { link = "CmpItemKindTypeParameter" })
hl("BlinkCmpGhostText", { fg = colors.fg_dim, italic = true })

-- ============================================================================
-- NOTIFY
-- ============================================================================

hl("NotifyBackground", { bg = colors.bg_float })
hl("NotifyERRORBorder", { fg = colors.error, bg = colors.bg_float })
hl("NotifyWARNBorder", { fg = colors.warn, bg = colors.bg_float })
hl("NotifyINFOBorder", { fg = colors.info, bg = colors.bg_float })
hl("NotifyDEBUGBorder", { fg = colors.fg_dim, bg = colors.bg_float })
hl("NotifyTRACEBorder", { fg = colors.teal_slate, bg = colors.bg_float })
hl("NotifyERRORIcon", { fg = colors.error })
hl("NotifyWARNIcon", { fg = colors.warn })
hl("NotifyINFOIcon", { fg = colors.info })
hl("NotifyDEBUGIcon", { fg = colors.fg_dim })
hl("NotifyTRACEIcon", { fg = colors.teal_slate })
hl("NotifyERRORTitle", { fg = colors.error, bold = true })
hl("NotifyWARNTitle", { fg = colors.warn, bold = true })
hl("NotifyINFOTitle", { fg = colors.info, bold = true })
hl("NotifyDEBUGTitle", { fg = colors.fg_dim, bold = true })
hl("NotifyTRACETitle", { fg = colors.teal_slate, bold = true })

-- ============================================================================
-- SNACKS
-- ============================================================================

-- Snacks Dashboard
hl("SnacksDashboardNormal", { fg = colors.fg_secondary, bg = colors.bg })
hl("SnacksDashboardDesc", { fg = colors.fg_secondary })
hl("SnacksDashboardFile", { fg = colors.teal_slate })
hl("SnacksDashboardDir", { fg = colors.teal_bright })
hl("SnacksDashboardFooter", { fg = colors.fg_dim, italic = true })
hl("SnacksDashboardHeader", { fg = colors.teal_bright, bold = true })
hl("SnacksDashboardIcon", { fg = colors.teal_slate })
hl("SnacksDashboardKey", { fg = colors.fg_dim })
hl("SnacksDashboardTerminal", { fg = colors.fg_secondary })
hl("SnacksDashboardSpecial", { fg = colors.teal_bright })
hl("SnacksDashboardTitle", { fg = colors.fg_alt, bold = true })

-- Snacks Picker
hl("SnacksPicker", { fg = colors.fg })
hl("SnacksPickerBorder", { fg = colors.gray_graphite, bg = "NONE" })  -- Transparent border
hl("SnacksPickerListCursorLine", { bg = colors.bg_highlight })
hl("SnacksPickerMatch", { fg = colors.teal_bright, bold = true })
hl("SnacksPickerPrompt", { fg = colors.teal_bright, bold = true })
hl("SnacksPickerTitle", { fg = colors.fg_alt, bg = colors.teal_slate, bold = true })
hl("SnacksPickerDir", { fg = colors.teal_bright })
hl("SnacksPickerPathHidden", { fg = colors.fg_dim })
hl("SnacksPickerGitStatusUntracked", { fg = colors.fg_tertiary })
hl("SnacksPickerPathIgnored", { fg = colors.fg_dim })

-- ============================================================================
-- MASON
-- ============================================================================

hl("MasonHighlight", { fg = colors.teal_bright })
hl("MasonHighlightBlock", { fg = colors.bg, bg = colors.teal_slate })
hl("MasonHighlightBlockBold", { fg = colors.bg, bg = colors.teal_slate, bold = true })
hl("MasonHighlightSecondary", { fg = colors.warn })
hl("MasonHighlightBlockSecondary", { fg = colors.bg, bg = colors.warn })
hl("MasonHighlightBlockBoldSecondary", { fg = colors.bg, bg = colors.warn, bold = true })
hl("MasonHeader", { link = "MasonHighlightBlockBoldSecondary" })
hl("MasonHeaderSecondary", { link = "MasonHighlightBlockBold" })
hl("MasonMuted", { fg = colors.fg_dim })
hl("MasonMutedBlock", { fg = colors.bg, bg = colors.fg_dim })
hl("MasonMutedBlockBold", { fg = colors.bg, bg = colors.fg_dim, bold = true })

-- ============================================================================
-- MINI.NVIM
-- ============================================================================

-- Mini.Pick
hl("MiniPickBorder", { link = "FloatBorder" })
hl("MiniPickBorderBusy", { fg = colors.warn, bg = colors.bg_float })
hl("MiniPickBorderText", { link = "FloatTitle" })
hl("MiniPickIconDirectory", { fg = colors.teal_bright })
hl("MiniPickIconFile", { fg = colors.fg })
hl("MiniPickHeader", { fg = colors.info })
hl("MiniPickMatchCurrent", { bg = colors.bg_highlight })
hl("MiniPickMatchMarked", { link = "Visual" })
hl("MiniPickMatchRanges", { fg = colors.teal_bright, bold = true })
hl("MiniPickNormal", { link = "NormalFloat" })
hl("MiniPickPreviewLine", { link = "CursorLine" })
hl("MiniPickPreviewRegion", { link = "IncSearch" })
hl("MiniPickPrompt", { fg = colors.teal_bright, bold = true })

-- Mini.Statusline
hl("MiniStatuslineDevinfo", { fg = colors.fg_secondary, bg = colors.bg_float })
hl("MiniStatuslineFileinfo", { fg = colors.fg_secondary, bg = colors.bg_float })
hl("MiniStatuslineFilename", { fg = colors.fg, bg = colors.bg_float })
hl("MiniStatuslineInactive", { fg = colors.fg_dim, bg = colors.bg_float })
hl("MiniStatuslineModeCommand", { fg = colors.bg, bg = colors.teal_deep, bold = true })  -- Teal instead of orange
hl("MiniStatuslineModeInsert", { fg = colors.bg, bg = colors.success, bold = true })
hl("MiniStatuslineModeNormal", { fg = colors.bg, bg = colors.teal_slate, bold = true })
hl("MiniStatuslineModeOther", { fg = colors.bg, bg = colors.info, bold = true })
hl("MiniStatuslineModeReplace", { fg = colors.bg, bg = colors.error, bold = true })
hl("MiniStatuslineModeVisual", { fg = colors.bg, bg = colors.teal_bright, bold = true })

-- Mini.Tabline
hl("MiniTablineCurrent", { fg = colors.fg_alt, bg = colors.bg_highlight, bold = true })
hl("MiniTablineFill", { bg = colors.bg })
hl("MiniTablineHidden", { fg = colors.fg_dim, bg = colors.bg })
hl("MiniTablineModifiedCurrent", { fg = colors.warn, bg = colors.bg_highlight, bold = true })
hl("MiniTablineModifiedHidden", { fg = colors.warn, bg = colors.bg })
hl("MiniTablineModifiedVisible", { fg = colors.warn, bg = colors.bg })
hl("MiniTablineTabpagesection", { fg = colors.bg, bg = colors.teal_slate, bold = true })
hl("MiniTablineVisible", { fg = colors.fg, bg = colors.bg })

-- Mini.Files
hl("MiniFilesBorder", { link = "FloatBorder" })
hl("MiniFilesBorderModified", { fg = colors.warn, bg = colors.bg_float })
hl("MiniFilesCursorLine", { bg = colors.bg_highlight })
hl("MiniFilesDirectory", { fg = colors.teal_bright, bold = true })
hl("MiniFilesFile", { fg = colors.fg })
hl("MiniFilesNormal", { link = "NormalFloat" })
hl("MiniFilesTitle", { link = "FloatTitle" })
hl("MiniFilesTitleFocused", { fg = colors.fg_alt, bg = colors.teal_bright, bold = true })

-- Mini.Diff
hl("MiniDiffOverAdd", { link = "DiffAdd" })
hl("MiniDiffOverChange", { link = "DiffChange" })
hl("MiniDiffOverContext", { fg = colors.fg_dim })
hl("MiniDiffOverDelete", { link = "DiffDelete" })
hl("MiniDiffSignAdd", { fg = colors.success, bg = colors.bg })
hl("MiniDiffSignChange", { fg = colors.warn, bg = colors.bg })
hl("MiniDiffSignDelete", { fg = colors.error, bg = colors.bg })

-- Mini.Icons
hl("MiniIconsAzure", { fg = colors.info })
hl("MiniIconsBlue", { fg = colors.info })
hl("MiniIconsCyan", { fg = colors.teal_bright })
hl("MiniIconsGreen", { fg = colors.success })
hl("MiniIconsGrey", { fg = colors.fg_dim })
hl("MiniIconsOrange", { fg = colors.warn })
hl("MiniIconsPurple", { fg = colors.gray_rose })
hl("MiniIconsRed", { fg = colors.error })
hl("MiniIconsYellow", { fg = colors.warn })

-- Mini.Indentscope
hl("MiniIndentscopeSymbol", { fg = colors.teal_slate })
hl("MiniIndentscopeSymbolOff", { fg = colors.gray_graphite })  -- Subtle gray instead of orange

-- Mini.Misc
hl("MiniCursorword", { bg = colors.bg_highlight })
hl("MiniCursorwordCurrent", { bg = colors.bg_highlight })
hl("MiniTrailspace", { bg = colors.error })

-- ============================================================================
-- RAINBOW DELIMITERS
-- ============================================================================

hl("RainbowDelimiterRed", { fg = colors.error })
hl("RainbowDelimiterYellow", { fg = colors.warn })
hl("RainbowDelimiterBlue", { fg = colors.info })
hl("RainbowDelimiterOrange", { fg = colors.warn })
hl("RainbowDelimiterGreen", { fg = colors.success })
hl("RainbowDelimiterViolet", { fg = colors.gray_rose })
hl("RainbowDelimiterCyan", { fg = colors.teal_bright })

-- ============================================================================
-- DAP (Debug Adapter Protocol)
-- ============================================================================

hl("DapBreakpoint", { fg = colors.error })
hl("DapBreakpointCondition", { fg = colors.warn })
hl("DapLogPoint", { fg = colors.info })
hl("DapStopped", { fg = colors.success })

hl("DapUIBreakpointsCurrentLine", { fg = colors.success, bold = true })
hl("DapUIBreakpointsDisabledLine", { fg = colors.fg_dim })
hl("DapUIBreakpointsInfo", { fg = colors.info })
hl("DapUIBreakpointsLine", { fg = colors.fg })
hl("DapUIBreakpointsPath", { fg = colors.teal_bright })
hl("DapUIDecoration", { fg = colors.teal_slate })
hl("DapUIFloatBorder", { link = "FloatBorder" })
hl("DapUILineNumber", { fg = colors.teal_bright })
hl("DapUIModifiedValue", { fg = colors.warn, bold = true })
hl("DapUIScope", { fg = colors.teal_bright })
hl("DapUISource", { fg = colors.gray_rose })
hl("DapUIStoppedThread", { fg = colors.success })
hl("DapUIThread", { fg = colors.teal_slate })
hl("DapUIType", { fg = colors.teal_slate })
hl("DapUIValue", { fg = colors.fg })
hl("DapUIVariable", { fg = colors.fg })
hl("DapUIWatchesEmpty", { fg = colors.fg_dim })
hl("DapUIWatchesError", { fg = colors.error })
hl("DapUIWatchesValue", { fg = colors.fg })

-- ============================================================================
-- MARKDOWN
-- ============================================================================

hl("markdownH1", { fg = colors.teal_bright, bold = true })
hl("markdownH2", { fg = colors.teal_bright, bold = true })
hl("markdownH3", { fg = colors.teal_slate, bold = true })
hl("markdownH4", { fg = colors.teal_slate, bold = true })
hl("markdownH5", { fg = colors.teal_slate })
hl("markdownH6", { fg = colors.teal_slate })
hl("markdownHeadingDelimiter", { fg = colors.teal_bright, bold = true })
hl("markdownCode", { fg = colors.gray_rose })
hl("markdownCodeBlock", { fg = colors.gray_rose })
hl("markdownCodeDelimiter", { fg = colors.teal_slate })
hl("markdownBlockquote", { fg = colors.fg_dim, italic = true })
hl("markdownListMarker", { fg = colors.teal_bright })
hl("markdownOrderedListMarker", { fg = colors.teal_bright })
hl("markdownRule", { fg = colors.gray_storm })
hl("markdownHeadingRule", { fg = colors.gray_storm })
hl("markdownUrlDelimiter", { fg = colors.fg_secondary })
hl("markdownLinkDelimiter", { fg = colors.fg_secondary })
hl("markdownLinkTextDelimiter", { fg = colors.fg_secondary })
hl("markdownUrl", { fg = colors.teal_bright, underline = true })
hl("markdownUrlTitleDelimiter", { fg = colors.success })
hl("markdownLinkText", { fg = colors.teal_slate, underline = true })
hl("markdownIdDeclaration", { link = "markdownLinkText" })
hl("markdownBold", { fg = colors.fg_alt, bold = true })
hl("markdownItalic", { fg = colors.fg, italic = true })
hl("markdownBoldItalic", { fg = colors.fg_alt, bold = true, italic = true })

-- ============================================================================
-- NOICE
-- ============================================================================

hl("NoiceCursor", { link = "Cursor" })
hl("NoiceCmdlinePopupBorder", { fg = colors.teal_slate, bg = "NONE" })  -- Transparent border
hl("NoiceCmdlineIcon", { fg = colors.teal_bright })
hl("NoiceConfirmBorder", { link = "NoiceCmdlinePopupBorder" })
hl("NoiceCmdlinePopupBorderSearch", { fg = colors.warn, bg = "NONE" })  -- Transparent border
hl("NoiceCmdlineIconSearch", { fg = colors.warn })

-- ============================================================================
-- TERMINAL COLORS
-- ============================================================================

vim.g.terminal_color_0 = colors.bg
vim.g.terminal_color_1 = colors.error
vim.g.terminal_color_2 = colors.success
vim.g.terminal_color_3 = colors.warn
vim.g.terminal_color_4 = colors.info
vim.g.terminal_color_5 = colors.gray_rose
vim.g.terminal_color_6 = colors.teal_bright
vim.g.terminal_color_7 = colors.fg
vim.g.terminal_color_8 = colors.gray_storm
vim.g.terminal_color_9 = colors.error
vim.g.terminal_color_10 = colors.success
vim.g.terminal_color_11 = colors.warn
vim.g.terminal_color_12 = colors.info
vim.g.terminal_color_13 = colors.gray_rose
vim.g.terminal_color_14 = colors.teal_bright
vim.g.terminal_color_15 = colors.fg_alt

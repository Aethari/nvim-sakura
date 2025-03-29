local lush = require('lush')
local hsl = lush.hsl

-- Convert hex to HSL for our main colors
local bg = hsl("#18131e")
local fg = hsl("#c36ec4")

-- Slightly modified versions for subtle variations
local bg_subtle = bg.darken(5)
local fg_subtle = fg.lighten(15)
local fg_muted = fg.lighten(30)

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Base UI elements
    Normal       { fg = fg, bg = bg },
    NormalFloat  { Normal },
    FloatBorder  { fg = fg },
    FloatTitle   { fg = fg },
    
    -- Cursor and selection
    Cursor       { fg = bg, bg = fg },
    CursorLine   { bg = bg_subtle },
    Visual       { bg = bg.lighten(30), fg = fg },
    
    -- UI elements
    LineNr       { fg = fg_muted },
    CursorLineNr { fg = fg },
    SignColumn   { bg = bg },
    VertSplit    { fg = bg_subtle },
    StatusLine   { fg = fg, bg = bg_subtle },
    StatusLineNC { fg = fg_muted, bg = bg_subtle },
    
    -- Menus
    Pmenu        { bg = bg_subtle, fg = fg },
    PmenuSel     { bg = fg_muted, fg = bg },
    PmenuSbar    { bg = bg_subtle },
    PmenuThumb   { bg = fg_muted },
    
    -- Messages
    ErrorMsg     { fg = fg },
    WarningMsg   { fg = fg },
    ModeMsg      { fg = fg },
    MoreMsg      { fg = fg },
    Question     { fg = fg },
    
    -- Search
    Search       { bg = fg_muted, fg = bg },
    IncSearch    { bg = fg, fg = bg },
    
    -- Folds and special text
    Folded       { fg = fg_muted, bg = bg_subtle },
    NonText      { fg = fg_muted },
    SpecialKey   { fg = fg_muted },
    
    -- Syntax highlighting - minimalist approach
    Comment      { fg = fg_muted },
    
    -- All text elements use the same color with subtle variations
    Constant     { fg = fg },
    String       { fg = fg },
    Character    { fg = fg },
    Number       { fg = fg },
    Boolean      { fg = fg },
    Float        { fg = fg },
    
    Identifier   { fg = fg },
    Function     { fg = fg },
    
    Statement    { fg = fg },
    Conditional  { fg = fg },
    Repeat       { fg = fg },
    Label        { fg = fg },
    Operator     { fg = fg },
    Keyword      { fg = fg },
    Exception    { fg = fg },
    
    PreProc      { fg = fg },
    Include      { fg = fg },
    Define       { fg = fg },
    Macro        { fg = fg },
    PreCondit    { fg = fg },
    
    Type         { fg = fg },
    StorageClass { fg = fg },
    Structure    { fg = fg },
    Typedef      { fg = fg },
    
    Special      { fg = fg },
    
    Underlined   { fg = fg, gui = "underline" },
    Error        { fg = fg, gui = "underline" },
    Todo         { fg = fg, gui = "bold" },
    
    -- Diagnostics - keeping them subtle
    DiagnosticError { fg = fg },
    DiagnosticWarn  { fg = fg },
    DiagnosticInfo  { fg = fg },
    DiagnosticHint  { fg = fg },
    
    -- Tree-sitter groups - all using the same color for minimalism
    sym"@text.literal"      { fg = fg },
    sym"@text.reference"    { fg = fg },
    sym"@text.title"        { fg = fg, gui = "bold" },
    sym"@text.uri"          { fg = fg, gui = "underline" },
    sym"@text.underline"    { fg = fg, gui = "underline" },
    sym"@text.todo"         { Todo },
    sym"@comment"           { Comment },
    sym"@punctuation"       { fg = fg },
    sym"@constant"          { fg = fg },
    sym"@string"            { fg = fg },
    sym"@function"          { fg = fg },
    sym"@variable"          { fg = fg },
    sym"@keyword"           { fg = fg },
  }
end)

return theme

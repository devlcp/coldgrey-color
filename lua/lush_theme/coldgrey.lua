local lush = require('lush')
local hsl = lush.hsl

local let = vim.g

local colors = {
  background = hsl(228, 19, 15),
  foreground = hsl(205, 26, 70),
  red        = hsl(0, 26, 70),
  green      = hsl(121, 26, 70),
  brown      = hsl(25, 26, 70),
  blue       = hsl(225, 26, 70),
  purple     = hsl(261, 26, 70),
  cyan       = hsl(180, 26, 70),
  yellow     = hsl(60, 26, 70),
  pink       = hsl(310, 26, 70)
}


local theme = lush(function()
  -- if let.coldgrey_transparent then
  --   Normal {bg = 'none'}
  -- end

  return {
    Comment      { fg = colors.background.lightness(40) }, -- any comment
    -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    Conceal      { bg = colors.pink, fg = colors.background}, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = colors.foreground, fg = colors.background }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = colors.background.lightness(20) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { bg = colors.green, fg = colors.background.lightness(30) }, -- diff mode: Added line |diff.txt|
    DiffChange   { bg = colors.yellow, fg = colors.background.lightness(30) }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { bg = colors.red, fg = colors.background.lightness(30) }, -- diff mode: Deleted line |diff.txt|
    DiffText     { bg = colors.red, fg = colors.background }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { bg = colors.background }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { fg = colors.foreground }, -- cursor in a focused terminal
    TermCursorNC { fg = colors.foreground }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = colors.red }, -- error messages on the command line
    -- VertSplit    { }, -- the column separating vertically split windows
    Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { bg = colors.background.lightness(20) }, -- column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { bg = colors.background.da(10), fg = colors.foreground.da(50) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = colors.background.da(10), fg = colors.foreground.da(20), gui = 'bold' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = colors.green, fg = colors.background.lightness(20) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { bg = colors.foreground, fg = colors.background.lightness(20) }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      { fg = colors.pink }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg = 'none', fg = colors.foreground }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { bg = colors.background.da(10) }, -- Popup menu: normal item.
    PmenuSel     { bg = colors.background.lightness(30) }, -- Popup menu: selected item.
    PmenuSbar    { bg = colors.background.lightness(20) }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = colors.foreground }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = colors.foreground,  fg = colors.background }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { fg = colors.brown }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { gui = 'underline' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = colors.foreground.da(10), fg = colors.background }, -- status line of current window
    StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = colors.background.da(30), fg = colors.foreground }, -- tab pages line, not active tab page label
    TabLineFill  { bg = colors.background.da(30), fg = colors.foreground.da(40) }, -- tab pages line, where there are no labels
    TabLineSel   { bg = colors.foreground.da(30), fg = colors.background.lightness(30), gui = 'bold' }, -- tab pages line, active tab page label
    Title        { fg = colors.foreground }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = colors.foreground, fg = colors.background }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { bg = colors.red.sa(30), fg = colors.background.lightness(20) }, -- warning messages
    Whitespace   { fg = colors.background.lightness(30) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = colors.red }, -- (preferred) any constant
    String         { fg = colors.green }, --   a string constant: "this is a string"
    Character      { fg = colors.green }, --  a character constant: 'c', '\n'
    Number         { fg = colors.red }, --   a number constant: 234, 0xff
    Boolean        { fg = colors.red }, --  a boolean constant: TRUE, false
    Float          { fg = colors.red }, --    a floating point constant: 2.3e10

    Identifier     { fg = colors.yellow }, -- (preferred) any variable name
    Function       { fg = colors.yellow }, -- function name (also: methods for classes)

    Statement      { fg = colors.purple.sa(20) }, -- (preferred) any statement
    Conditional    { fg = colors.purple.sa(20) }, --  if, then, else, endif, switch, etc.
    Repeat         { fg = colors.purple.sa(30) }, --   for, do, while, etc.
    Label          { fg = colors.purple.sa(30) }, --    case, default, etc.
    Operator       { fg = colors.purple.sa(20) }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = colors.purple.sa(20) }, --  any other keyword
    Exception      { fg = colors.purple.sa(20) }, --  try, catch, throw

    PreProc        { fg = colors.cyan }, -- (preferred) generic Preprocessor
    Include        { fg = colors.cyan }, --  preprocessor #include
    Define         { fg = colors.cyan }, --   preprocessor #define
    Macro          { fg = colors.cyan }, --    same as Define
    PreCondit      { fg = colors.cyan }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = colors.brown }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = colors.brown }, -- static, register, volatile, etc.
    Structure      { fg = colors.brown }, --  struct, union, enum, etc.
    Typedef        { fg = colors.brown }, --  A typedef

    Special        { fg = colors.blue }, -- (preferred) any special symbol
    SpecialChar    { fg = colors.blue }, --  special character in a constant
    Tag            { fg = colors.blue }, --    you can use CTRL-] on this
    Delimiter      { fg = colors.blue }, --  character that needs attention
    SpecialComment { fg = colors.blue }, -- special things inside a comment
    Debug          { fg = colors.blue }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { bg = colors.red.sa(90), fg = colors.background}, -- (preferred) any erroneous construct
    Todo           { bg = colors.green.sa(10), fg = colors.foreground.da(60), gui = 'bold' }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    BufferCurrent                           { bg = colors.foreground, fg = colors.background },
    BufferCurrentIndex                      { bg = colors.foreground, fg = colors.background },
    BufferCurrentMod                        { bg = colors.foreground, fg = colors.background, gui = 'bold' },
    BufferCurrentSign                       { bg = colors.foreground, fg = colors.purple.sa(30) },
    BufferCurrentTarget                     { bg = colors.background },

    BufferVisible                           { bg = colors.background.lightness(60), fg = colors.background },
    BufferVisibleIndex                      { bg = colors.background.lightness(60), fg = colors.background },
    BufferVisibleMod                        { bg = colors.background.lightness(60), fg = colors.background, gui = 'bold' },
    BufferVisibleSign                       { bg = colors.background.lightness(60), fg = colors.foreground },
    BufferVisibleTarget                     { bg = colors.background.lightness(60), fg = colors.background },

    BufferInactive                          { bg = colors.background, fg = colors.foreground.da(50) },
    BufferInactiveIndex                     { bg = colors.background, fg = colors.foreground.da(50) },
    BufferInactiveMod                       { bg = colors.background, fg = colors.foreground.da(50), gui = 'bold' },
    BufferInactiveSign                      { bg = colors.background, fg = colors.foreground.da(50) },
    BufferInactiveTarget                    { bg = colors.background, fg = colors.foreground.da(50) },

    BufferTabpages                          { bg = colors.foreground, fg = colors.background },
    BufferTabpageFill                       { },

    BufferPart                              { },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.
-- Pluggin "QuickScope"
    QuickScopePrimary       { fg = colors.green.sa(80),  gui='underline' },
    QuickScopeSecondary     { fg = colors.blue.sa(80),  gui='underline' },
-- Indent guides
    IndentGuidesOdd         { bg = colors.background, fg = colors.foreground },
    IndentGuidesEven        { bg = colors.background, fg = colors.foreground },
    -- nvim-tree
    NvimTreeLuaIcon         { fg = colors.blue.sa(20) },
    NvimTreePythonIcon      { fg = colors.yellow.sa(20) },
    NvimTreeShellIcon       { fg = colors.foreground.lightness(50) },
    NvimTreeJavascriptIcon  { fg = colors.yellow.sa(60) },
    NvimTreeCIcon           { fg = colors.green.sa(50) },
    NvimTreeReactIcon       { fg = colors.blue.sa(50) },
    NvimTreeHtmlIcon        { fg = colors.brown.sa(10) },
    NvimTreeRustIcon        { fg = colors.brown.sa(50) },
    NvimTreeVimIcon         { fg = colors.green },
    NvimTreeTypescriptIcon  { fg = colors.cyan.sa(50) },

    NvimTreeLicenseIcon     { },
    NvimTreeYamlIcon        { },
    NvimTreeTomlIcon        { },
    NvimTreeGitignoreIcon   { },
    NvimTreeJsonIcon        { },

    NvimTreeGitDirty        { },
    NvimTreeGitStaged       { },
    NvimTreeGitMerge        { },
    NvimTreeGitRenamed      { },
    NvimTreeGitNew          { },

    NvimTreeFileDirty       { },
    NvimTreeFileStaged      { },
    NvimTreeFileMerge       { },
    NvimTreeFileNew         { },
    NvimTreeFileRenamed     { },

    NvimTreeSymlink         { },
    NvimTreeFolderName      { fg = colors.cyan },
    NvimTreeRootFolder      { fg = colors.cyan, gui = 'bold' },
    NvimTreeFolderIcon      { fg = colors.foreground },
    NvimTreeEmptyFolderName { fg = colors.cyan },
    NvimTreeExecFile        { fg = colors.red },
    NvimTreeSpecialFile     { fg = colors.purple },
    NvimTreeImageFile       { fg = colors.green },
    NvimTreeMarkdownFile    { fg = colors.pink},
    NvimTreeIndentMarker    { fg = colors.foreground },

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap

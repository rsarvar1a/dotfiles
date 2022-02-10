local cmd = vim.cmd
local colours = require("palette.lua")

cmd "set termguicolors"
cmd ("colorscheme " .. colours.scheme)

local function highlight(key, val)
--
  local command = ("hi " .. key)

  if val.fg ~= nil then
    command = (command .. ' guifg=' .. val.fg)
  end
  if val.bg ~= nil then
    command = (command .. ' guibg=' .. val.bg)
  end
  if val.opt ~= nil then
    command = (command ..   ' gui=' .. val.opt)
  end

  cmd ("" .. command)
--
end

highlight("CocErrorSign",                       { fg = colours.error, bg = colours.sel2, opt = nil           })
highlight("CocFloating",                        { fg = nil,           bg = colours.bg3,  opt = nil           })
highlight("CocFloating",                        { fg = nil,           bg = colours.sel3, opt = nil           })
highlight("CocHintSign",                        { fg = colours.hint,  bg = colours.sel2, opt = nil           })
highlight("CocInfoSign",                        { fg = colours.info,  bg = colours.sel2, opt = nil           })
highlight("CocWarningSign",                     { fg = colours.warn,  bg = colours.sel2, opt = nil           })
highlight("Comment",                            { fg = nil,           bg = nil,          opt = "italic"      })
highlight("CursorLine",                         { fg = nil,           bg = colours.sel2, opt = nil           })
highlight("CursorLineNr",                       { fg = colours.hil1,  bg = colours.sel2, opt = "bold,italic" })
highlight("EndOfBuffer",                        { fg = colours.bg1,   bg = colours.bg1,  opt = nil           })
highlight("FoldColumn",                         { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("Folded",                             { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("Keyword",                            { fg = nil,           bg = nil,          opt = "bold"        })
highlight("LineNr",                             { fg = nil,           bg = colours.bg1,  opt = "italic"      })
highlight("LineNr",                             { fg = colours.sel3,  bg = nil,          opt = nil           })
highlight("LspDiagnosticSignError",             { fg = colours.error, bg = colours.bg1,  opt = nil           })
highlight("LspDiagnosticSignHint",              { fg = colours.hint,  bg = colours.bg1,  opt = nil           })
highlight("LspDiagnosticSignInformation",       { fg = colours.info,  bg = colours.bg1,  opt = nil           })
highlight("LspDiagnosticSignWarning",           { fg = colours.warn,  bg = colours.bg1,  opt = nil           })
highlight("MsgArea",                            { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("Normal",                             { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("NormalNC",                           { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("NvimTreeNormal",                     { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("NvimTreeNormalNC",                   { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("NvimTreeFolderIcon",                 { fg = colours.hil1,  bg = nil,          opt = nil           })
highlight("NvimTreeFolderName",                 { fg = colours.blue,  bg = nil,          opt = nil           })
highlight("NvimTreeLspDiagnosticsError",        { fg = colours.error, bg = colours.bg1,  opt = nil           })
highlight("NvimTreeLspDiagnosticsHint",         { fg = colours.hint,  bg = colours.bg1,  opt = nil           })
highlight("NvimTreeLspDiagnosticsInformation",  { fg = colours.info,  bg = colours.bg1,  opt = nil           })
highlight("NvimTreeLspDiagnosticsWarning",      { fg = colours.warn,  bg = colours.bg1,  opt = nil           })
highlight("NvimTreeStatusLine",                 { fg = colours.bg2,   bg = colours.bg2,  opt = nil           })
highlight("NvimTreeStatuslineNC",               { fg = colours.bg2,   bg = colours.bg2,  opt = nil           })
highlight("NvimTreeVertSplit",                  { fg = colours.sel2,  bg = colours.bg1,  opt = nil           })
highlight("Operator",                           { fg = nil,           bg = "NONE",       opt = nil           })
highlight("Pmenu",                              { fg = colours.fg1,   bg = colours.sel2, opt = nil           })
highlight("PmenuSbar",                          { fg = nil,           bg = colours.sel3, opt = nil           })
highlight("PmenuSel",                           { fg = colours.bg1,   bg = colours.hil1, opt = nil           })
highlight("Quote",                              { fg = nil,           bg = colours.bg3,  opt = nil           })
highlight("Quote",                              { fg = nil,           bg = colours.bg3,  opt = nil           })
highlight("SidebarNvimVertSplit",               { fg = colours.bg1,   bg = colours.bg1,  opt = nil           })
highlight("SignColumn",                         { fg = nil,           bg = colours.bg1,  opt = nil           })
highlight("StatusLine",                         { fg = colours.bg2,   bg = colours.bg2,  opt = nil           })
highlight("StatusLineNC",                       { fg = colours.bg2,   bg = colours.bg2,  opt = nil           })
highlight("VertSplit",                          { fg = colours.sel2,  bg = colours.bg1,  opt = "bold"        })
highlight("Window",                             { fg = nil,           bg = colours.bg3,  opt = nil           })

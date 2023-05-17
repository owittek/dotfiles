return function()
  local get_hlgroup = require("astronvim.utils").get_hlgroup
  local nontext = get_hlgroup "NonText"
  return {
    CursorLineFold = { link = "CursorLineNr" }, -- highlight fold indicator as well as line number
    GitSignsCurrentLineBlame = { fg = nontext.fg, italic = true }, -- italicize git blame virtual text
    HighlightURL = { underline = true }, -- always underline URLs
    LineNr = { fg = "#b4befe" },
    CursorLineNr = { fg = "#f38ba8" },
    FoldColumn = { fg = "#b4befe" },
  }
end

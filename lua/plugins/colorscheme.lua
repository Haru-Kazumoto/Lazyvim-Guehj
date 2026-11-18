return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      compile = false,
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus",
      },
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      undercurl = true,
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      functionStyle = {},
      typeStyle = {},
      overrides = function(colors)
        local palette = colors.palette
        return {
          CursorLine = { bg = palette.sumiInk4 },
          CursorLineNr = { fg = palette.carpYellow, bold = true },
          WinSeparator = { fg = palette.sumiInk6 },
          FloatBorder = { fg = palette.sumiInk6, bg = "NONE" },
          SnacksDashboardNormal = { fg = palette.fujiWhite },
          SnacksDashboardHeader = { fg = palette.crystalBlue },
          SnacksDashboardIcon = { fg = palette.autumnYellow },
          SnacksDashboardKey = { fg = palette.autumnYellow, bold = true },
          SnacksDashboardDesc = { fg = palette.fujiWhite },
          SnacksDashboardFooter = { fg = palette.oldWhite },
          SnacksDashboardSpecial = { fg = palette.springViolet2 },
          SnacksDashboardTitle = { fg = palette.crystalBlue, bold = true },
          SnacksDashboardDir = { fg = palette.waveAqua2 },
          SnacksDashboardFile = { fg = palette.fujiWhite },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}

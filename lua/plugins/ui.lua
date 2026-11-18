return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "thin",
        indicator = { style = "underline" },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true,
        modified_icon = "●",
        padding = 1,
        hover = { enabled = true },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "kanagawa",
        globalstatus = true,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
    },
  },
}

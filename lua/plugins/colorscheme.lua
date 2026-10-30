return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      styles = {
        comments = { "italic" },
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },

      custom_highlights = function(colors)
        return {
          Comment = {
            fg = colors.overlay1,
            italic = true,
          },
        }
      end,
    },
  },
}

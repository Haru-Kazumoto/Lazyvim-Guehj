-- Tambahan untuk development: git, file explorer berbasis buffer, completion, parser, tools.
return {
  -- Git: diff view & history satu layar, plus resolusi merge conflict
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    keys = {
      { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diffview (open)" },
      { "<leader>gV", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview (file history)" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Diffview (close)" },
    },
    opts = {},
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    event = "LazyFile",
    opts = {},
  },

  -- Edit filesystem seperti edit buffer (rename/move/delete file langsung dari Neovim)
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory (Oil)" },
    },
    opts = {
      default_file_explorer = false, -- biarkan explorer bawaan LazyVim tetap dipakai
      view_options = { show_hidden = true },
      keymaps = { ["q"] = "actions.close" },
    },
  },

  -- Completion: dokumentasi otomatis muncul + ghost text
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        ghost_text = { enabled = true },
        documentation = { auto_show = true, auto_show_delay_ms = 200 },
        menu = { draw = { treesitter = { "lsp" } } },
      },
    },
  },

  -- Parser treesitter yang sering dipakai untuk web dev
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "css",
        "diff",
        "dockerfile",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "scss",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },

  -- Tools yang di-install Mason (formatter/linter di luar yang dibawa extras)
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "shellcheck",
        "hadolint",
      },
    },
  },
}

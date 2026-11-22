-- Tambahan visual: diagnostic inline, breadcrumbs, rainbow bracket, smooth scroll, dll.
return {
  -- Diagnostic inline yang rapi (pengganti virtual_text bawaan)
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach",
    priority = 1000, -- harus dimuat sebelum plugin lain yang mengubah diagnostic
    opts = {
      preset = "modern",
      options = {
        show_source = { enabled = true },
        multilines = { enabled = true },
        add_messages = { display_count = true },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- matikan virtual_text bawaan supaya tidak dobel dengan tiny-inline-diagnostic
      diagnostics = { virtual_text = false },
    },
  },

  -- Breadcrumbs di atas window (file > class > function)
  {
    "Bekaboo/dropbar.nvim",
    event = "LazyFile",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },

  -- Warna berbeda untuk setiap level kurung/bracket
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "LazyFile",
    main = "rainbow-delimiters.setup",
    opts = {},
  },

  -- Snacks: smooth scroll, indent guide beranimasi, zen mode, hidden files di picker
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = true },
      indent = {
        enabled = true,
        scope = { enabled = true, underline = true },
        animate = { enabled = true, duration = { step = 10, total = 200 } },
      },
      zen = { toggles = { dim = true, git_signs = false, diagnostics = false } },
      notifier = { style = "compact", timeout = 3000 },
      picker = {
        sources = {
          files = { hidden = true },
          grep = { hidden = true },
        },
      },
    },
  },

  -- Statusline: tampilkan nama LSP yang aktif di buffer
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 2, {
        function()
          local clients = vim.lsp.get_clients({ bufnr = 0 })
          if #clients == 0 then
            return ""
          end
          local names = {}
          for _, client in ipairs(clients) do
            -- sembunyikan copilot/null-ls agar statusline tidak penuh
            if client.name ~= "copilot" and client.name ~= "null-ls" then
              table.insert(names, client.name)
            end
          end
          return table.concat(names, ",")
        end,
        color = { gui = "italic" },
      })
    end,
  },
}

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Rounded borders for floating windows (Neovim 0.11+)
if vim.fn.has("nvim-0.11") == 1 then
  opt.winborder = "rounded"
end

-- Smoother split separators
opt.fillchars:append({ vert = "│" })

-- Only underline the cursorline number and the line itself
opt.cursorlineopt = "number,line"

-- Smooth blinking cursor
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

-- More context around the cursor
opt.scrolloff = 8

-- Nicer diffs
opt.diffopt:append({ "algorithm:histogram", "linematch:60" })

-- Guide at the column width used by stylua
opt.colorcolumn = "120"

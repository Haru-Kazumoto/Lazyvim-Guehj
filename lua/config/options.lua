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

-- Undo history tetap ada setelah file ditutup, tanpa file swap yang mengganggu
opt.undofile = true
opt.swapfile = false

-- Baris panjang tidak dibungkus; scroll horizontal tetap ada konteks
opt.wrap = false
opt.sidescrolloff = 8

-- Scroll baris yang di-wrap terasa lebih halus
opt.smoothscroll = true

-- Preview substitusi (:s) langsung di split
opt.inccommand = "split"

-- Popup menu lebih ringkas dan sedikit transparan
opt.pumheight = 12
opt.pumblend = 10
opt.winblend = 10

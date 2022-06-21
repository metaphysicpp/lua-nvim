-- :help options

local options = {
  backup = false,                        -- creat a backup file
  clipboard = "unnamedplus",             -- allows neovim to access the system clipboard
  cmdheight = 2,                         -- more space for commad line to display info
  completeopt = {"menuone", "noselect"}, -- mostly just for com
  conceallevel = 0,                      -- so that `` is visible in markdown files
  fileencoding = "utf-8",                -- encoding written to a file
  hlsearch = true,                       -- highlight all matches
  ignorecase = true,                     -- ignore case in search partten
  mouse = "a",                           -- allow the mouse to be used in neovim
  pumheight = 10,                        -- popup menu height
  showmode = false,                      -- don't show like -- INSERT -- anymore
  showtabline = 2,                       -- always show tabs
  smartcase = true,                      -- smart case
  smartindent = true,                    -- make indenting smarter again
  splitbelow = true,                     -- horizontal splits to go below current window
  splitright = true,                     -- vertical splits to go the right of current window
  swapfile = false,                      -- creat a swap file
  timeoutlen = 500,                     -- time to wait for a mapped sequence to complete(in milliseconds)
  undofile = true,                       -- enable persister undofile
  updatetime = 250,                      -- faster completion (4000ms default)
  writebackup = false,                   -- if a file is being edited by another program, it is not allowed to be edited
  expandtab = true,                      -- convert tabs to spaces
  shiftwidth = 2,                        -- the number of spaces inserted for each indentation
  tabstop = 2,                           -- insert 4 spaces for a tab
  cursorline = true,                     -- highlight the current line
  number = true,                         -- set numbered lines
  relativenumber = true,                 -- set relative numbered lines
  numberwidth = 2,                       -- set number column width to 2 (default 4)
  signcolumn = "yes",                    -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                          -- display lines as one long lines
  scrolloff = 8,                         -- 8 lines gap to bottom when brower down
  sidescrolloff = 8,
  guifont = "Hack NF",
  autoindent = true,
  cindent = true,
  termguicolors = true,
  smarttab = true,
}

vim.opt.shortmess:append"c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd "set cinoptions=g0,:0,N-s,(0"


-- WSL yank support
vim.cmd [[
let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
]]

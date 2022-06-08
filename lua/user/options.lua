-- :help options
vim.opt.backup = false                  -- creat a backup file
vim.opt.clipboard = "unnamedplus"       -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                   -- more space for commad line to display info
vim.opt.completeopt = {"menuone", "noselect"} -- mostly just for com
vim.opt.conceallevel = 0                -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"          -- encoding written to a file
vim.opt.hlsearch = true                 -- highlight all matches
vim.opt.ignorecase = true               -- ignore case in search partten
vim.opt.mouse = "a"                     -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                  -- popup menu height
vim.opt.showmode = false                -- don't show like -- INSERT -- anymore
vim.opt.showtabline = 2                 -- always show tabs
vim.opt.smartcase = true                -- smart case
vim.opt.smartindent = true              -- make indenting smarter again
vim.opt.splitbelow = true               -- horizontal splits to go below current window
vim.opt.splitright = true               -- vertical splits to go the right of current window
vim.opt.swapfile = false                -- creat a swap file
vim.opt.timeoutlen = 1000               -- time to wait for a mapped sequence to complete(in milliseconds)
vim.opt.undofile = true                 -- enable persister undofile
vim.opt.updatetime = 300                -- faster completion (4000ms default)
vim.opt.writebackup = false             -- if a file is being edited by another program, it is not allowed to be edited
vim.opt.expandtab = true                -- convert tabs to spaces
vim.opt.shiftwidth = 4                  -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                     -- insert 4 spaces for a tab
vim.opt.cursorline = true               -- highlight the current line
vim.opt.number = true                   -- set numbered lines
vim.opt.relativenumber = true           -- set relative numbered lines
vim.opt.numberwidth = 4                 -- set number column width to 2 (default 4)
vim.opt.signcolumn = "yes"              -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                    -- display lines as one long lines
vim.opt.scrolloff = 8                   -- 8 lines gap to bottom when brower down
vim.opt.sidescrolloff = 8
-- vim.opt.guifont = ""

vim.opt.shortmess:append"c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

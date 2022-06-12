-- vim.cmd "colorscheme tokyonight"

local colorscheme = "tokyonight"

vim.g.tokyonight_italic_comments = false

-- Enable transparent background
-- vim.g.tokyonight_transparent = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme" .. colorscheme .. " not found!")
    return
end
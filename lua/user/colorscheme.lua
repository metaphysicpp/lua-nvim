local colorscheme = "nord"

vim.g.nord_italic = false
-- vim.g.nord_disable_background = true
vim.g.nord__cursorline_transparent = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme" .. colorscheme .. " not found!")
  return
end






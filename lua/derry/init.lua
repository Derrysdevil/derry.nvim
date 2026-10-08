local M = {}

M.setup = function()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "derry"

  local groups = require("derry.groups").setup()
  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end

  -- Terminal colors
  local c = require("derry.palette")
  vim.g.terminal_color_0  = c.black
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.yellow
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.magenta
  vim.g.terminal_color_6  = c.aqua
  vim.g.terminal_color_7  = c.white
  vim.g.terminal_color_8  = c.bright_black
  vim.g.terminal_color_9  = c.bright_red
  vim.g.terminal_color_10 = c.bright_green
  vim.g.terminal_color_11 = c.bright_yellow
  vim.g.terminal_color_12 = c.bright_blue
  vim.g.terminal_color_13 = c.bright_magenta
  vim.g.terminal_color_14 = c.bright_aqua
  vim.g.terminal_color_15 = c.bright_white
end

return M

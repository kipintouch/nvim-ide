local conf = function()
  local toload = "catppuccin-latte" -- "tokyonight-night"
  local status_ok, _ = pcall(vim.cmd.colorscheme, toload)
  if not status_ok then
    -- vim.notify("Failed to load " .. toload .. " colorscheme", vim.log.levels.INFO, {timeout=2000})
    -- pcall(vim.cmd.colorscheme, "tokyonight-night")
    return
  end
end

local M = {
  {
    "folke/tokyonight.nvim",
    -- commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = conf,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000, -- make sure to load this before all the other start plugins
    -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  },
}

return M

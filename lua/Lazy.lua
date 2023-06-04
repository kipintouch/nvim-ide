local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- load lazy
require("lazy").setup("user", {
  install = { colorscheme = { require("user.colorscheme").name } },
  defaults = { lazy = true, version = "57cce98dfdb2f2dd05a0567d89811e6d0505e13b" },
  ui = { wrap = "true" },
  change_detection = { enabled = true },
  debug = false,
  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        -- "netrw",
        -- "netrwPlugin",
        -- "netrwSettings",
        -- "netrwFileHandlers",
        "matchit",
        "matchparen",
        "tohtml", -- Converting a syntax highlighted file to HTML
        "tar",
        "tarPlugin",
        --  "tutor", -- Teaching?
        "rrhelper",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
      },
    },
  },
})

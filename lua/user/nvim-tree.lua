local M = {
  "kyazdani42/nvim-tree.lua",
  -- commit = "59e65d88db177ad1e6a8cffaafd4738420ad20b6",
  event = "VimEnter"
}


local function on_attach(bufnr)
  -- This function has been generated from your
  --   view.mappings.list
  --   view.mappings.custom_only
  --   remove_keymaps
  --
  -- You should add this function to your configuration and set on_attach = on_attach in the nvim-tree setup call.
  --
  -- Although care was taken to ensure correctness and completeness, your review is required.
  --
  -- Please check for the following issues in auto generated content:
  --   "Mappings removed" is as you expect
  --   "Mappings migrated" are correct
  --
  -- Please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for assistance in migrating.
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- Default mappings. Feel free to modify or remove as you wish.
  --
  -- BEGIN_DEFAULT_ON_ATTACH
  api.config.mappings.default_on_attach(bufnr)
  -- END_DEFAULT_ON_ATTACH


  -- Mappings migrated from view.mappings.list
  --
  -- You will need to insert "your code goes here" for any mappings with a custom action_cb
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))

end

function M.config()
  -- local tree_cb = require("nvim-tree.config").nvim_tree_callback
  require("nvim-tree").setup {
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    renderer = {
      icons = {
        glyphs = {
          default = "",
          symlink = "",
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            untracked = "U",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = "󰌵",
        info = "",
        warning = "",
        error = "",
      },
    },
    view = {
      width = 30,
      side = "left",
      -- mappings = {
      --   list = {
      --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
      --     { key = "h",                  cb = tree_cb "close_node" },
      --     { key = "v",                  cb = tree_cb "vsplit" },
      --   },
      -- },
    },
    on_attach = on_attach
  }
end

return M

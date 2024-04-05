vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      source_selector = {
        winbar = false,
        statusline = false
      },
      enable_git_status = true,
      filesystem = {
        filtered_items = {
          visible = false,       -- make filtered items visible
          hide_dotfiles = false, -- don't hide dotfiles (hidden files)
          hide_by_name = {
            "node_modules",
            ".git",
            ".github",
            -- List of filenames that you may still want to hide
          },
          hide_by_pattern = {
            -- List of patterns for filenames to hide
          },
          never_show = {
            ".DS_Store",
            -- Files that should always be hidden
          },
        },
        -- other filesystem config
      },
    }
  end,
}

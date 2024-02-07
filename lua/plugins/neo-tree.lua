return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    opts = {
      source_selector = {
        winbar = true,
        statusline = false,
      },
      close_if_last_window = false,
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            "node_modules",
            ".git",
          },
          always_show = {
            ".gitignore",
            ".env",
          },
        },
        bind_to_cwd = false,
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
    },
  },
}

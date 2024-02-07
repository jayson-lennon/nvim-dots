return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = false, -- enables the Noice cmdline UI
        view = "cmdline"
      },
      popupmenu = {
        enabled = false,
      },
      messages = {
        enabled = false,
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
      },
    },
  },
}

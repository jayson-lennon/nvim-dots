local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  -- opts = {
  --   defaults = {
  --     file_ignore_patterns = {
  --       "node_modules",
  --     },
  --   },
  -- },
  keys = {
    { "<leader>ss", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace symbols" },
    { "<leader>sS", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },

    { "<leader>sg", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    { "<leader>sG", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    { "<leader>sW", Util.telescope("grep_string"), desc = "Word (root dir)" },
    { "<leader>sw", Util.telescope("grep_string", { cwd = false }), desc = "Word (cwd)" },
    { "<leader>sf", "<cmd>Telescope git_files<cr>", desc = "Find Files" },
    ["<leader>ff"] = nil,
  },
}

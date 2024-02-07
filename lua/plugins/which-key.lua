return {
  {
    "folke/which-key.nvim",
    opts = function()
      local wk = require("which-key")
      wk.register({
        ["gw"] = nil,
        ["<leader>cs"] = { "<cmd>AerialToggle<CR>", "Symbols outline" },

        ["<leader>m"] = { name = "+misc" },
        ["<leader>mc"] = { name = "+crates" },
        ["<leader>mcU"] = { '<cmd>lua require("crates").upgrade_all_crates()<CR>', "Upgrade all crates" },
        ["<leader>mcu"] = { '<cmd>lua require("crates").upgrade_crate()<CR>', "Upgrade crate" },
        ["<leader>mcc"] = { '<cmd>lua require("crates").open_crates_io()<CR>', "Open crates.io" },
        ["<leader>mcd"] = { '<cmd>lua require("crates").open_documentation()<CR>', "Open docs" },
        ["<leader>mch"] = { '<cmd>lua require("crates").open_homepage()<CR>', "Open homepage" },
        ["<leader>mcv"] = { '<cmd>lua require("crates").show_versions_popup()<CR>', "Show versions" },
        ["<leader>mcf"] = { '<cmd>lua require("crates").show_features_popup()<CR>', "Show features" },

        ["<leader>ss"] = { "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", "Symbols (workspace)" },
        ["<leader>sS"] = { "<cmd>Telescope lsp_document_symbols<CR>", "Symbols (document)" },
      })
    end,
  },
}

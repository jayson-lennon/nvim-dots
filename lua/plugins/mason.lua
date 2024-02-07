return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "codelldb")
      table.insert(opts.ensure_installed, "delve")
      table.insert(opts.ensure_installed, "eslint-lsp")
      table.insert(opts.ensure_installed, "gofumpt")
      table.insert(opts.ensure_installed, "goimports")
      table.insert(opts.ensure_installed, "goimports-reviser")
      table.insert(opts.ensure_installed, "golangci-lint-langserver")
      table.insert(opts.ensure_installed, "golines")
      table.insert(opts.ensure_installed, "gomodifytags")
      table.insert(opts.ensure_installed, "gopls")
      table.insert(opts.ensure_installed, "gotests")
      table.insert(opts.ensure_installed, "html-lsp")
      table.insert(opts.ensure_installed, "htmlbeautifier")
      table.insert(opts.ensure_installed, "json-lsp")
      table.insert(opts.ensure_installed, "lua-language-server")
      table.insert(opts.ensure_installed, "prettierd")
      table.insert(opts.ensure_installed, "rust-analyzer")
      table.insert(opts.ensure_installed, "shfmt")
      table.insert(opts.ensure_installed, "stylua")
      table.insert(opts.ensure_installed, "taplo")
      table.insert(opts.ensure_installed, "typescript-language-server")
    end,
  },
}

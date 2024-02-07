return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "awk" })
        vim.list_extend(opts.ensure_installed, { "diff" })
        vim.list_extend(opts.ensure_installed, { "gdscript", "godot_resource" })
        vim.list_extend(
          opts.ensure_installed,
          { "gitignore", "gitcommit", "git_config", "git_rebase", "gitattributes" }
        )
        vim.list_extend(opts.ensure_installed, { "gleam" })
        vim.list_extend(opts.ensure_installed, { "go", "gomod", "gosum", "gowork", "proto" })
        vim.list_extend(opts.ensure_installed, { "html", "pug", "css", "scss" })
        vim.list_extend(opts.ensure_installed, { "ini", "toml", "yaml" })
        vim.list_extend(opts.ensure_installed, { "javascript", "jsdoc" })
        vim.list_extend(opts.ensure_installed, { "json", "json5", "jsonc" })
        vim.list_extend(opts.ensure_installed, { "latex", "mermaid" })
        vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline" })
        vim.list_extend(opts.ensure_installed, { "python" })
        vim.list_extend(opts.ensure_installed, { "python" })
        vim.list_extend(opts.ensure_installed, { "regex" })
        vim.list_extend(opts.ensure_installed, { "rust", "ron" })
        vim.list_extend(opts.ensure_installed, { "sql" })
        vim.list_extend(opts.ensure_installed, { "typescript", "tsx" })
        vim.list_extend(opts.ensure_installed, { "vim", "vimdoc" })
      end
    end,
  },
}

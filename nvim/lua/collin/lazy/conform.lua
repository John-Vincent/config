return {
  "stevearc/conform.nvim",
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- This will provide type hinting with LuaLS
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "biome", "prettier" },
      typescript = { "biome", "prettier" },
      javascriptreact = { "biome", "prettier" },
      typescriptreact = { "biome", "prettier" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    formatters = {
      biome = {
        -- Only use biome if biome.json is found in the current working directory
        require_cwd = true,
        --cwd = require("conform.util").root_file({ "biome.json", "biome.jsonc" }),
      },
      prettier = {
        -- Only use prettier if a config file is found
        require_cwd = true,
        --cwd = require("conform.util").root_file({ ".prettierrc", ".prettierrc.json", "prettier.config.js" }),
      },
    },
  },
}

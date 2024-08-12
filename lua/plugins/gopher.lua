return {
  {
    "olexsmir/gopher.nvim",
    ft = "go",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },

    build = function()
      vim.cmd([[silent! GoInstallDeps]])
    end,
    ---@type gopher.Config
    opts = {},
  },
}

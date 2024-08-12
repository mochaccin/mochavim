return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "teacup.dev",
          path = "~/Documents/obsidian/teacup.dev",
        },
        {
          name = "teacup.personal",
          path = "~/Documents/obsidian/teacup.personal",
        },
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    new_notes_location = "current_dir",

    note_id_func = function(title)
      return title
    end,
    note_frontmatter_func = function(note)
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }

      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,

    mappings = {},

    ui = {
      enable = true,
    },
  },
}

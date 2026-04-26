---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " █████  ███████ ████████ ██████   ██████ ",
            "██   ██ ██         ██    ██   ██ ██    ██",
            "███████ ███████    ██    ██████  ██    ██",
            "██   ██      ██    ██    ██   ██ ██    ██",
            "██   ██ ███████    ██    ██   ██  ██████ ",
            "",
            "███   ██ ██   ██ ██ ███   ███",
            "████  ██ ██   ██ ██ ████  ████",
            "██ ██ ██ ██   ██ ██ ██ ████ ██",
            "██ ████  ██  ██  ██ ██  ██  ██",
            "██  ████  ████   ██ ██      ██",
          }, "\n"),
          keys = {
            -- { key = "n", action = "<Leader>n",  icon = " ", desc = "New File  " },
            -- { key = "f", action = "<Leader>ff", icon = " ", desc = "Find File  " },
            -- { key = "o", action = "<Leader>fo", icon = " ", desc = "Recents  " },
            -- { key = "w", action = "<Leader>fw", icon = " ", desc = "Find Word  " },
            -- { key = "'", action = "<Leader>f'", icon = " ", desc = "Bookmarks  " },
            -- { key = "s", action = "<Leader>Sl", icon = " ", desc = "Last Session  " },
          },
        },
        sections = {
          { section = "header",       padding = 5 },
          { section = "keys",         gap = 1, padding = 3 },
          { section = "recent_files", title = "Recent Files", limit = 5, padding = 2, intent = 2 },
          { section = "projects",     title = "Projects",  limit = 5, padding = 2, intent = 2 },
          { section = "startup" },
        },
      },
    },
  },
}

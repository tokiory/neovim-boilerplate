local neotree = require("neo-tree")

neotree.setup({
  close_if_last_window = true,
  name = {
    trailing_slash = true,
    use_git_status_colors = true,
    highlight = "NeoTreeFileName",
  },
  window = {
    width = 50,
    mappings = {
      ["l"] = "open",
      ["h"] = "close_node",
    }
  },
  filesystem = {
    follow_current_file = true,
  },
})


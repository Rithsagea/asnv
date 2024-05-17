return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right",
      auto_expand_width = true,
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", {})
    vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", {})
    vim.api.nvim_set_hl(0, "NeoTreeTabInactive", {})
  end,
}

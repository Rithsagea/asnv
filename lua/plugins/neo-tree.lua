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

    vim.api.nvim_create_autocmd("FileType", {
      pattern="neo-tree",
      callback = function()
        vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { bg = "none", fg = "none", blend = 100 })
      end
    })
  end,
}

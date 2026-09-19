return {
  "tjdevries/ocaml.nvim",
  -- this repo uses none-ls for formatting, not conform.nvim, so ocaml.nvim's
  -- eager `require("conform")` in its setup() throws on startup ("module
  -- 'conform' not found") since conform.nvim is never installed here
  opts = { setup_conform = false },
}

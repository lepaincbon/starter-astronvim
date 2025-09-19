-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "java",
      "cpp",
      "ocaml",
      "ocaml_interface",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
  },
}

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
-- Set up custom filetypes for .flex and .jflex files
vim.filetype.add {
  extension = {
    flex = "jflex",
    jflex = "jflex",
  },
}

-- Source the jflex.vim syntax file from ~/.config/nvim/syntax/jflex.vim
vim.api.nvim_create_autocmd("FileType", {
  pattern = "jflex",
  command = "source ~/.config/nvim/syntax/jflex.vim",
})
-- This will run last in the setup process, so it's ideal for custom configurations
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c", -- Apply to C files
  callback = function()
    vim.opt_local.makeprg = "gcc % -o %:r -lm" -- Set makeprg to gcc for C files
  end,
})

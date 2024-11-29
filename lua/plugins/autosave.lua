-- lua
return {
  "0x00-ketsu/autosave.nvim",
  -- lazy-loading on events
  event = { "InsertLeave", "TextChanged" },
  config = function()
    require("autosave").setup {
      enable = true,
      prompt_style = "none",
      prompt_message = function() return "💾 Autosave: saved at " .. vim.fn.strftime "%H:%M:%S" end,
      events = { "InsertLeave", "TextChanged" },
      conditions = {
        exists = true,
        modifiable = true,
        filename_is_not = {},
        filetype_is_not = {},
      },
      write_all_buffers = false,
      debounce_delay = 135,
    }
  end,
}

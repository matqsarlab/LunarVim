local M = {}

M.config = function()
  require("color-picker")
  local opts = { noremap = true, silent = true }

  vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
  vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
  require("color-picker").setup({ -- for changing icons & mappings
    ["icons"] = { ".", "." },
    -- ["icons"] = { "ﮊ", "" },
    -- ["icons"] = { "", "ﰕ" },
    -- ["icons"] = { "", "" },
    -- ["icons"] = { "", "" },
    -- ["icons"] = { "ﱢ", "" },
    ["border"] = "rounded",                     -- none | single | double | rounded | solid | shadow
    ["background_highlight_group"] = "Normal",  -- default
    ["border_highlight_group"] = "FloatBorder", -- default
    ["text_highlight_group"] = "Normal",        --default
  })
end

return M

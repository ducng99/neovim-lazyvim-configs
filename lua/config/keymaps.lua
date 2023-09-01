-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local insert_moveLineStart = function()
  local col = vim.api.nvim_win_get_cursor(0)[2]

  if col == 0 then
    vim.cmd("normal! ^a")
  else
    vim.cmd("normal! 0i")
  end
end

local normal_moveLineStart = function()
  local col = vim.api.nvim_win_get_cursor(0)[2]

  if col == 0 then
    vim.cmd("normal! ^")
  else
    vim.cmd("normal! 0")
  end
end

local function getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

-- Duplicate line & text
map("i", "<C-d>", "<Esc>Vypi", { desc = "Duplicate line" })
map("v", "<C-d>", "yp", { desc = "Duplicate selected text" })

-- Undo & redo in insert mode
map("i", "<C-z>", function()
  vim.cmd("undo")
end, { desc = "Undo" })
map("i", "<C-y>", function()
  vim.cmd("redo")
end, { desc = "Redo" })

-- Movements
map("i", "<C-a>", insert_moveLineStart, { desc = "Move to line start" })
map("i", "<Home>", insert_moveLineStart, { desc = "Move to line start" })
map("n", "<C-a>", normal_moveLineStart, { desc = "Move to line start" })
map("n", "<Home>", normal_moveLineStart, { desc = "Move to line start" })
map("i", "<C-e>", "<End>", { desc = "Move to line end" })
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page down" })

-- Search selected text
map("v", "<C-f>", function()
  local text = getVisualSelection()
  require("telescope.builtin").current_buffer_fuzzy_find({ default_text = text })
end, { desc = "Search selected text" })

-- Session management
map("n", "<leader>ql", "<cmd>SessionManager load_session<CR>", { desc = "Select a session" })
map("n", "<leader>qs", "<cmd>SessionManager save_current_session<CR>", { desc = "Save current session" })
